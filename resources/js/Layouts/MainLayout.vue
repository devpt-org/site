<script setup>
    import {Head, Link} from '@inertiajs/inertia-vue3';
    import NavBar from '@/Components/NavBar/NavBar.vue';
    import Footer from '@/Components/Footer/Footer.vue';

</script>

<template>
    <Head title="devPT - Comunidade de Developers Portugueses"/>
    <div class="min-h-screen flex flex-col bg-white dark:bg-zinc-800 text-black dark:text-white">
        <NavBar />
        <main class="flex-1 w-full">
            <slot />
        </main>
        <Footer />
    </div>
</template>
