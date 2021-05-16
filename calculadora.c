#include <stdio.h>
#include <stdlib.h>

int main (void){
    float entrada=0, fixo=0, subtotal=0, taxa=0, total=0;
    int start=0;
    do{
        //Inicio
        printf("\nBem vindx a casa de cambio Muito Dinheiro, para dar inicio ao programa digite 1: ");
        scanf("%i", &start);
        //Valor pago em dinheiro
        printf("\nDigite o valor de entrada: ");
        scanf("%f", &entrada);
        //Valor da moeda unitaria de destido (saida)
        printf("\nDigite o valor atual (unitario) da moeda de destino: ");
        scanf("%f", &fixo);

        switch(start){
            case 1:
                //Valor bruto
                subtotal = entrada * fixo;
                //Valor da taxa
                taxa = subtotal * 0.10;
                //Valor final
                total = subtotal + taxa;
                default:
                    printf("\nDigite 1 para recomecar\n");
                    break;

        }
        printf("\nSubtotal= %0.2f", subtotal);
        printf("\nTaxa=%0.2f", taxa);
        printf("\nTotal= %0.2f", total);
        printf("\nDigite 1 para recomecar\n");
        scanf("%i", &start);

    }while(start==1);
}
