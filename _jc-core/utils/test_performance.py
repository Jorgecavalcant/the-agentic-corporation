import sys
import os

def count_stats(file_path):
    if not os.path.exists(file_path):
        return None
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    chars = len(content)
    words = len(content.split())
    # Estimação Gemini (aproximadamente 4 chars por token)
    est_tokens = round(chars / 3.8) 
    
    return {
        "chars": chars,
        "words": words,
        "tokens": est_tokens
    }

def main():
    original_path = "d:/TECH42/PROJETOS/empresa-100-ia/PRD.md"
    minified_path = "d:/TECH42/PROJETOS/empresa-100-ia/PRD.min.md"
    v70_path = "d:/TECH42/PROJETOS/empresa-100-ia/PRD.70.min.md"
    
    orig_stats = count_stats(original_path)
    mini_stats = count_stats(minified_path)
    v70_stats = count_stats(v70_path)
    
    if not orig_stats or not mini_stats:
        print("Erro: Arquivos não encontrados.")
        return

    print("--- COMPARAÇÃO DE PERFORMANCE (TOKEN-OPTIMIZER) ---")
    print("-" * 50)
    print(f"{'Métrica':<15} | {'Original':<10} | {'70% (Min)':<10} | {'Ponto Ideal':<11} | {'Redução Max'}")
    print("-" * 75)
    
    for metric in ["chars", "words", "tokens"]:
        orig = orig_stats[metric]
        v70 = v70_stats[metric]
        mini = mini_stats[metric]
        reduction_max = f"{((orig - mini) / orig) * 100:.1f}%"
        print(f"{metric.capitalize():<15} | {orig:<10} | {v70:<10} | {mini:<11} | {reduction_max}")
    print("-" * 75)

if __name__ == "__main__":
    main()
