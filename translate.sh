cat << 'EOF' > /tmp/translate_my.sh
#!/bin/bash

# Target Files Directory
FILES=(
    "/usr/bin/menu"
    "/bin/menu"
    "/etc/sshplus/menu"
    "/usr/local/lib/menu"
)

echo -e "\033[1;33m[+] SSH Plus ကို မြန်မာဘာသာသို့ ပြောင်းလဲနေပါသည်။...\033[0m"

for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        # Main Menu Page 1
        sed -i 's/CRIAR USUARIO TESTE/စမ်းသပ်အကောင့်ပြုလုပ်ရန်/g' "$FILE"
        sed -i 's/CRIAR USUARIO/အကောင့်သစ်ပြုလုပ်ရန်/g' "$FILE"
        sed -i 's/REMOVER USUARIO/အကောင့်ဖျက်ရန်/g' "$FILE"
        sed -i 's/MONITOR ONLINE/အသုံးပြုသူများကြည့်ရန်/g' "$FILE"
        sed -i 's/MUDAR DATA/သက်တမ်းပြောင်းရန်/g' "$FILE"
        sed -i 's/ALTERAR LIMITE/ယှဉ်တွဲအသုံးပြုမှုပြင်ရန်/g' "$FILE"
        sed -i 's/MUDAR SENHA/စကားဝှက်ပြောင်းရန်/g' "$FILE"
        sed -i 's/REMOVER EXPIRADOS/သက်တမ်းကုန်အကောင့်ဖျက်ရန်/g' "$FILE"
        sed -i 's/RELATORIO DE USUARIOS/အကောင့်များမှတ်တမ်း/g' "$FILE"
        sed -i 's/MODO DE CONEXAO/ချိတ်ဆက်မှုပုံစံ/g' "$FILE"
        sed -i 's/MEMORIA VIRTUAL/Virtual RAM ပြုလုပ်ရန်/g' "$FILE"
        sed -i 's/INFO VPS/VPS အချက်အလက်/g' "$FILE"
        sed -i 's/MAIS >>>/နောက်သို့ >>>/g' "$FILE"

        # Main Menu Page 2 (MAIS)
        sed -i 's/ADICIONAR HOST/Host အသစ်ထည့်ရန်/g' "$FILE"
        sed -i 's/REMOVER HOST/Host ပြန်ဖျက်ရန်/g' "$FILE"
        sed -i 's/REINICIAR SISTEMA/စနစ်ကို ပြန်စတင်ရန် (Reboot)/g' "$FILE"
        sed -i 's/REINICIAR SERVICOS/ဝန်ဆောင်မှုများ ပြန်စရန်/g' "$FILE"
        sed -i 's/BLOCK TORRENT/Torrent ပိတ်ရန်/g' "$FILE"
        sed -i 's/BOT TELEGRAM/Telegram Bot ပြင်ရန်/g' "$FILE"
        sed -i 's/BOT TESTE/စမ်းသပ် Bot ပြင်ရန်/g' "$FILE"
        sed -i 's/MUDAR SENHA ROOT/Root စကားဝှက်ပြောင်းရန်/g' "$FILE"
        sed -i 's/AUTO EXECUCAO/Auto Run ပြင်ရန်/g' "$FILE"
        sed -i 's/ATUALIZAR SCRIPT/Script ကို Update လုပ်ရန်/g' "$FILE"
        sed -i 's/REMOVER SCRIPT/Script ကို ဖျက်ထုတ်ရန်/g' "$FILE"
        sed -i 's/BOT REVENDA/ကိုယ်စားလှယ် Bot/g' "$FILE"
        sed -i 's/VOLTAR <<</ရှေ့သို့ <<</g' "$FILE"
        sed -i 's/SAIR <<</ထွက်မည် <<</g' "$FILE"
        sed -i 's/SAIR/ထွက်မည်/g' "$FILE"

        # System Header & Prompts
        sed -i 's/SISTEMA/စနစ်/g' "$FILE"
        sed -i 's/MEMÓRIA RAM/RAM မိုရီ/g' "$FILE"
        sed -i 's/PROCESSADOR/ပရိုဆက်ဆာ/g' "$FILE"
        sed -i 's/Onlines/အွန်လိုင်း/g' "$FILE"
        sed -i 's/Expirados/သက်တမ်းကုန်/g' "$FILE"
        sed -i 's/Total/စုစုပေါင်း/g' "$FILE"
        sed -i 's/OQUE DESEJA FAZER/ဘာလုပ်ဆောင်လိုပါသလဲ/g' "$FILE"

        echo -e "\033[1;32m[✓] $FILE ကို မြန်မာဘာသာသို့ ပြောင်းလဲပြီးပါပြီ။\033[0m"
    fi
done

echo -e "\033[1;32m[✓] အကုန်လုံး ပြီးစီးပါပြီ။ 'menu' လို့ ရိုက်ပြီး စမ်းသပ်ကြည့်နိုင်ပါပြီ။\033[0m"
EOF
chmod +x /tmp/translate_my.sh
bash /tmp/translate_my.sh
