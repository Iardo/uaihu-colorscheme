import { dirname } from "@std/path";
import { ensureDirSync } from "@std/fs";
import { parse } from "@std/yaml";
// Theme
import Emacs from '@theme/emacs.js';
import Litexl from '@theme/litexl.js';
import Nvim from '@theme/nvim.js';
import Posh from '@theme/posh.js';
import Trilium from '@theme/trilium.js';
import VS from '@theme/vs.js';
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
        const encoder = new TextEncoder();
        const themes = [
            Emacs,
            Litexl,
            Nvim,
            Posh,
            Trilium,
            VS,
            VSCode,
            ZSH,
        ]

        Deno.stdout.writeSync(encoder.encode('Compiling'));
        for (const theme of themes) {
            let file = theme.filepath;
            let data = theme.template(Builder.uaihu);

            if (!(file instanceof Array)) {
                file = [file];
            }
            if (!(data instanceof Array)) {
                data = [data];
            }
            for (const [index, tmpl] of data.entries()) {
                ensureDirSync(dirname(file[index]))
                Deno.writeTextFileSync(file[index], tmpl);
            }
        }
        Deno.stdout.writeSync(encoder.encode('... done\n'));
    }

    static build_plugin() {
        const enabled = Deno.env.get("ENABLES_BUNDLES") ?? 'true';
        const plugins = [
            VS,
            VSCode,
        ]

        if (enabled != 'true') {
            return;
        }
        for (const plugin of plugins) {
            plugin.bundle();
        }
    }
}

export default Builder;
