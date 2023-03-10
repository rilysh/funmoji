#!/usr/bin/env fish

function main
    set -l EMOJIS \
        # Random emojis
        "(′ꈍヮꈍ‵)" "˃́ᗜ˂̀" "( ^∇^)(•̀ω•́ )" "ヽ(⪰◡⪯)ﾉ" "ヽ（oωo）ﾉ" "◝(^ヮ^)◜" "◝(^௰^)◜" \
        "ヽ(ôᴗôヽ)" "⌒(o＾▽＾o)ノ" "ヽ(๑╹◡╹๑)ﾉ♫" "(╯⪰u⪯）╯" "♬ヽ(*・ω・)ﾉ♫" \
        "(ノ ￣ ω￣)ノ♫ヽ(゜◡゜ヽ)♪" "ヽ(ˆ⌣ˆ)ヾ" "ヽ(๑╹.╹๑)ﾉ♫" "ヽ(๑╹◡╹๑)/ヽ(・ω・)ﾉ♫" \
    \
        # Joy emojis
        "(* ^ ω ^)" "(o^▽^o)" "(o･ω･o)" "(^人^)" "(´• ω •\`)" "(*°▽°*)" \
        "(´｡• ᵕ •｡\`)" "(´･ᴗ･ \` )" "(„• ᴗ •„)" "(´｡• ω •｡\`)" "＼(≧▽≦)／" \
        "o(≧▽≦)o" "\(★ω★)/" "ヽ(*・ω・)ﾉ" "(*´▽\`*)" "(≧◡≦)" "(⌒ω⌒)" "(*≧ω≦*)" \
        "ヽ(o＾▽＾o)ノ" "\(^ヮ^)/" "*:.｡.o(≧▽≦)o.｡.:*" "。.:☆*:･'(*⌒―⌒*)))" \
        "～('▽^人)" "ヽ(o^ ^o)ﾉ" "(っ˘ω˘ς )" "(๑˃ᴗ˂)ﻭ" \
    \
        # Love emojis
        "(´• ω •\`)" "σ(≧ε≦σ) ♡" "(≧◡≦) ♡" "(/^-^(^ ^*)/ ♡" "(´｡• ω •｡\`) ♡" \
        "(*^^*)♡" "☆⌒ヽ(*'､^*)chu" "♡(>ᴗ•)" \
    \
        # Embarrassment emojis
        "(///￣ ￣///)" "(o^ ^o)" "(ノ*°▽°*)" "(*^.^*)" "(⁄ ⁄>⁄ ▽ ⁄<⁄ ⁄)" "( 〃▽〃)" \
        "(⁄ ⁄•⁄ω⁄•⁄ ⁄)" \
    \
        # Surprise emojis
        "∑(O_O;)" "(o_O)" "(o_O)!" "( : ౦ ‸ ౦ : )" "Σ(O_O)" "(O_O;)" "(O.O)" \
    \
        # Greetings emojis
        "(*・ω・)ﾉ" "(^-^*)/" "ヾ(*'▽'*)" "(´• ω •\`)ﾉ" "( ´ ▽ \` )" "(o^ ^o)/" \
        "(≧▽≦)/" "(o´ω\`o)ﾉ" "(⌒ω⌒)ﾉ" "(o´▽\`o)ﾉ" \
    \
        # Hugging emojis
        "⊂(´• ω •\`⊂)" "(つ≧▽≦)つ)" "(｡•̀ᴗ-)✧" "(づ◡﹏◡)づ" \
    \
        # Winking emojis
        "☆⌒(ゝ。∂)" "(>ᴗ•)" \
    \
        # Sleeping emojis
        "(￣o￣) zzZZzzZZ" "(( _ _ ))..zzzZZ" "(∪｡∪)｡｡｡zzZ" "(￣ρ￣)..zzZZ" \
        "(－ω－) zzZ" \
    \
        # Cat emojis
        "(=^･ω･^=)" "(＾• ω •＾)" "(=^ ◡ ^=)" "(=^‥^=)" "ต(=ω=)ต" "( =ω=)..nyaa" \
    \
        # Magic emojis
        "ノ⌒･*:.｡. .｡.:*･゜ﾟ･*☆" "(ﾉ≧∀≦)ﾉ ‥…━━━★" "(ﾉ>ω<)ﾉ :｡･:*:･ﾟ’★,｡･:*:･ﾟ’" \
    \
        # Music emojis
        "♪♬((d⌒ω⌒b))♬♪" "(^_^♪)" "乁( • ω •乁)" "♬♫♪◖(● o ●)◗♪♫♬" "(｢• ω •)｢" \
        "♪ヽ(^^ヽ)♪" "⁽⁽◝( • ω • )◜⁾⁾" "✺◟( • ω • )◞✺" "~(˘▽˘~)" \
    \
        # Random emojis
        "_(:3 」∠)_" "∠( ᐛ 」∠)_" "ଘ(੭ˊ꒳​ˋ)੭✧" "ଘ(੭ˊᵕˋ)੭* ੈ✩‧₊˚"

    if [ $argv[1] = "--bold" ]
        set IS_BOLD "1"
    else
        set IS_BOLD "0"
    end
    set -l LEN $(count $EMOJIS)
    set -l RNG $(shuf -i 1-$LEN -n 1)
    set -l COLOR "\033[$IS_BOLD;$(shuf -i 91-97 -n 1)m"
    set -l END "\033[0m"
    set -l SIZE "$(stty size | cut -f2 -d ' ')"
    set -l COLS $(math "($SIZE / 2) - 1")

    for i in (seq 1 $COLS)
        echo -n " "
    end

    echo -e "$COLOR$EMOJIS[$RNG]$END"
    exit 0
end

main "$argv"
