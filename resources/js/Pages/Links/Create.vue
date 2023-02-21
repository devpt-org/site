<script setup>
import { useForm } from '@inertiajs/inertia-vue3'

const form = useForm({
    title: null,
    url: null,
    description: null,
})
</script>

<template>
    <div>
        <form class="flex flex-col gap-2" @submit.prevent="form.post(route('links.store'))">
            <div>
                <label for="title">Título</label>
                <input type="text" name="title" id="title" v-model="form.title" />
                <div v-if="form.errors.title">{{ form.errors.title }}</div>
            </div>
            <div>
                <label for="description">Descrição</label>
                <input type="text" name="description" id="description" v-model="form.description" />
                <div v-if="form.errors.description">{{ form.errors.description }}</div>
            </div>
            <div>
                <label for="url">Url</label>
                <input type="url" name="url" id="url" v-model="form.url" />
                <div v-if="form.errors.url">{{ form.errors.url }}</div>
            </div>
            <button type="submit" :disabled="form.processing">Criar link</button>
        </form>
    </div>
</template>