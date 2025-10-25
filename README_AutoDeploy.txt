DavElec - Guia Final para criar APK via GitHub
=============================================

1) Extrai este pacote para uma pasta local.

2) Cria um repositório GitHub:
   - Nome: DavElec
   - Não inicializar com README

3) Abre a pasta extraída e envia todos os ficheiros para o GitHub:
   - Opcao 1: Arrastar ficheiros para GitHub web (commit changes)
   - Opcao 2: GitHub Desktop (recomendado para pastas grandes)

4) Verifica a aba Actions:
   - Workflow 'Android CI - Build APK (debug)' vai iniciar automaticamente

5) Espera o workflow terminar (círculo verde ✅):
   - No final, desce até Artifacts
   - Clica em DavElec-debug-apk.zip → Download
   - Extrai o ZIP para obter o APK (.apk)

6) Instala o APK no teu telemóvel:
   - Permite fontes desconhecidas se necessário
   - A app DavElec estará pronta para usar

⚡ Sempre que atualizares o código:
   - Faz commit → push no GitHub
   - Workflow gera um novo APK automaticamente