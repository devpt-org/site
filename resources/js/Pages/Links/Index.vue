<script setup>
import MainLayout from "@/Layouts/MainLayout.vue";
import ExternalLinkIcon from "@/Components/Svg/ExternalLinkIcon.vue";

const props = defineProps(["links"]);
</script>

<template>
    <MainLayout>
        <div>
            <ul
                role="list"
                class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4"
            >
                <li
                    class="col-span-1 flex flex-col divide-y divide-gray-200 rounded-lg bg-white text-center shadow"
                    v-for="(link, i) in props.links"
                    :key="i"
                >
                    <div class="flex flex-1 flex-col p-8">
                        <h3 class="text-sm font-medium text-gray-900">
                            {{ link.title }}
                        </h3>
                    </div>
                    <div>
                        <div class="-mt-px flex divide-x divide-gray-200">
                            <div class="flex w-0 flex-1">
                                <a
                                    :href="link.url"
                                    target="_blank"
                                    class="relative -mr-px inline-flex w-0 flex-1 items-center justify-center gap-x-3 rounded-bl-lg border border-transparent py-4 text-sm font-semibold text-gray-900"
                                >
                                    <ExternalLinkIcon />
                                    Visitar
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </MainLayout>
</template>
