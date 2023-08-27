<script setup>
import HeroLogo from '@/Components/HeroLogo.vue'
import HomepageBenefits from "@/Components/HomepageBenefits.vue";
import MainLayout from '@/Layouts/MainLayout.vue';

defineProps({
    benefits: Object,
})
</script>

<template>
    <MainLayout>
        <section class="flex items-center flex-col md:flex-row p-4 md:p-8">
            <div class="mb-4 md:mb-0 md:mr-6">
                <HeroLogo class="max-w-[320px] lg:max-w-[720px]" :height="303" :width="536" />
            </div>
            <div class="text-white">
                <div class="text-xl text-orange-500">Comunidade developers portugueses</div>
                <div class="text-2xl font-[1100]">Partilha, participa e comunica.</div>
                <div>Somos uma comunidade sem fins lucrativos com foco nos developers portugueses.</div>
                <a class="btn text-white bg-blue-400 hover:bg-blue-600 mt-4">Colabora</a>
            </div>
        </section>
        <section class="p-4 md:p-8">
            <HomepageBenefits :benefits="benefits"/>
        </section>
    </MainLayout>
</template>

<style>

    body {
        @apply bg-white dark:bg-zinc-800 text-black dark:text-white;
    }

</style>
