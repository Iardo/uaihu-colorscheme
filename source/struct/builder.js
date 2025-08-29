import { dirname } from "@std/path";
import { ensureDirSync } from "@std/fs";
import { parse } from "@std/yaml";
// Theme
import Emacs from '@theme/emacs.js';
import LiteXL from '@theme/lite-xl.js';
import Neovim from '@theme/neovim.js';
import Powershell from '@theme/powershell.js';
import Trilium from '@theme/trilium.js';
import VSCode from '@theme/vscode.js';
import ZSH from '@theme/zsh.js';

class Builder {
    static uaihu;

    static init() {
        const uaihu_cfg = './global/uaihu.yaml'
        const uaihu_txt = Deno.readTextFileSync(uaihu_cfg);
        Builder.uaihu = parse(uaihu_txt);
    }

    static build_themes() {
        const themes = [
            Emacs,
            LiteXL,
            Neovim,
            Powershell,
            Trilium,
            VSCode,
            ZSH,
        ]

        for (const theme of themes) {
            const file = theme.filepath;
            const data = theme.template(Builder.uaihu);

            ensureDirSync(dirname(file))
            Deno.writeTextFileSync(file, data);
        }
    }

    static build_plugin() {
        const plugins = [
            VSCode,
        ]

        for (const plugin of plugins) {
            plugin.bundle();
        }
    }
}

export default Builder;
