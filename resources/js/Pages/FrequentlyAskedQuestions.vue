<script setup>
import MainLayout from '@/Layouts/MainLayout.vue';
</script>

<template>
    <MainLayout>
        <section class="p-4 md:p-8">
            <div class="mb-8">
                <h2 class="text-2xl font-semibold text-gray-300 mb-6">Perguntas Frequentes</h2>
            </div>
            <div class="space-y-6">
                <details class="border border-gray-700 rounded-md p-4 hover:border-gray-600 transition-colors duration-200">
                    <summary class="cursor-pointer font-semibold text-gray-300 hover:text-gray-200">Ordenado ilíquido (bruto), líquido, quais as diferenças?</summary>
                    <p class="mt-4 text-sm">
                        O ordenado base bruto é o que está no contrato, e é o valor antes de ser retirado impostos e segurança social. Em Portugal costuma ser discutido o valor mensal, enquanto que noutros países o habitual é falar-se do valor anual. Para fazer a conversão do mensal para anual multiplica-se por 14: adiciona-se o subsídio de férias e de natal. Pode haver contratos que tenham o valor mensal já a incluir os duodécimos, casos em que se multiplica por 12.
                    </p>
                    <p class="mt-4 text-sm">
                        O valor líquido é o dinheiro que "cai na conta" todos os meses: normalmente calculado depois de deduzidas essas taxas, e acrescentados o subsídio de alimentação, bónus, ajudas de custo e afins.
                    </p>
                    <p class="mt-4 text-sm">
                        Muitas empresas (aquelas consultoras grandes) tentam negociar em valores líquidos, principalmente a recém-formados. É preciso ter noção do que isso implica.
                    </p>
                </details>

                <details class="border border-gray-700 rounded-md p-4 hover:border-gray-600 transition-colors duration-200">
                    <summary class="cursor-pointer font-semibold text-gray-300 hover:text-gray-200">Porque é que não é bom negociar valores líquidos / ser pago em ajudas de custo?</summary>
                    <p class="mt-4 text-sm">
                        Negociar em valores líquidos dá margem à empresa para apresentar um ordenado base bruto muito baixo altamente compensado com ajudas de custo ou outros mecanismos semelhantes.
                    </p>
                    <p class="mt-4 text-sm">
                        As ajudas de custo são um mecanismo de reembolsar gastos suportados pelo trabalhador no decorrer da actividade profissional. Compensar bilhetes ou gasolina quando é preciso ir para um escritório distante, etc. Como são para reembolsar despesas, não se aplica IRS nem Segurança Social.
                    </p>
                    <p class="mt-4 text-sm">
                        Vantagens para a empresa:
                    </p>
                    <ul class="list-disc pl-5 mt-2 text-gray-300 text-sm">
                        <li>Mais flexibilidade quando precisarem de reduzir despesas (aconteceu no COVID)</li>
                        <li>Obrigar as pessoas a trabalhar presencialmente ("estás em teletrabalho? não pagamos ajudas de custo então")</li>
                        <li>Menor carga fiscal para a empresa (23.5% de Segurança social vs até 5% de IRC)</li>
                    </ul>
                    <p class="mt-4 text-sm">
                        Desvantagens para o trabalhador:
                    </p>
                    <ul class="list-disc pl-5 mt-2 text-gray-300 text-sm">
                        <li>Só o ordenado base bruto é garantido pelas protecções ao trabalhador, tudo o resto pode ser revogado unilateralmente.</li>
                        <li>Reforma, subsídio de desemprego, baixa, etc são baseados no ordenado base bruto.</li>
                        <li>Maior dificuldade em obter créditos: os bancos olham para o valor base bruto.</li>
                        <li>As ajudas de custo não se têm de aplicar aos subsídios de férias e de natal.</li>
                        <li>Mecanismo potencialmente ilegal (assinar documentos fictícios de quilómetros)</li>
                    </ul>
                </details>
            </div>
        </section>
    </MainLayout>
</template>
