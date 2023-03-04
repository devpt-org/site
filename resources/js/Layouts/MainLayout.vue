<script setup>
    import {Head, Link} from '@inertiajs/inertia-vue3';
    import NavBar from '@/Components/NavBar/NavBar.vue';
    import Footer from '@/Components/Footer/Footer.vue';

</script>

<template>
    <Head title="devPT - Comunidade de Developers Portugueses"/>
    <NavBar />
    <slot />
    <Footer />
</template>
