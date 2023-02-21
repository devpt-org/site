<script setup>
import { Link } from '@inertiajs/inertia-vue3'

const props = defineProps(['links'])
</script>

<template>
    <div>
        <Link :href="route('links.create')">Criar link</Link>
        <div v-for="(link, i) in props.links" :key="i" v-text="link.title"/>
    </div>
</template>
