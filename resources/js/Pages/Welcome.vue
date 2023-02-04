<script setup>
import {Head, Link} from '@inertiajs/inertia-vue3'
import HeroLogo from '@/Components/HeroLogo.vue'
import HomepageBenefits from "@/Components/HomepageBenefits.vue";
import NavBar from '@/Components/NavBar/NavBar.vue'


defineProps({
    benefits: Object,
})
</script>

<template>
    <Head title="devPT - Comunidade de Developers Portugueses"/>
        <NavBar />
        <section class="flex items-center">
            <div>
                <HeroLogo class="max-w-[400px] lg:max-w-[800px]"/>
            </div>
            <div >
                <div class="text-xl text-orange-500">Comunidade developers portugueses</div>
                <div class="text-2xl font-[1100]">Partilha, participa e comunica.</div>
                <div>Somos uma comunidade sem fins lucrativos com foco nos developers portugueses.</div>
                <a class="btn text-white bg-blue-400 hover:bg-blue-600">Colabora</a>
            </div>
        </section>
        <section>
            <HomepageBenefits :benefits="benefits"/>
        </section>

</template>

<style>

    body {
        @apply bg-white dark:bg-zinc-800 text-black dark:text-white;
    }

</style>
