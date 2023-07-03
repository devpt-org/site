<script>
import GitHubIcon from '@/Components/Svg/GitHubIcon.vue';
import SunIcon from '@/Components/Svg/SunIcon.vue';
import MoonIcon from '@/Components/Svg/MoonIcon.vue';
import HamburgerIcon from '@/Components/Svg/HamburgerIcon.vue';
import { useDark, useToggle } from '@vueuse/core';

const isDark = useDark();
const toggleDark = useToggle(isDark);

export default {
    data() {
        return {
            links: [
                { name: 'Artigos', url: '/blog' },
                { name: 'Links', url: '/links' },
                { name: 'Discord', url: 'https://discord.gg/52apEBYQb2' },
                { name: 'Reddit', url: 'https://reddit.com/r/devpt/' },
                { name: 'Lemmy', url: 'https://lemmy.pt/c/DevPT' }
            ],
            dark: isDark
        }
    },
    methods: {
        toggleDark
    },
    components: {
        GitHubIcon,
        SunIcon,
        MoonIcon,
        HamburgerIcon
    }
}
</script>

<template>
    <nav class="navbar lg:px-4">
        <div class="navbar-start">
            <a class="btn btn-ghost normal-case text-lg hidden flex lg:flex items-center" href="/">
                <img v-show="this.dark" class="h-8 w-auto" src="images/logo-blue-white.svg" />
                <img v-show="!this.dark" class="h-8 w-auto" src="images/logo-blue.svg" />
            </a>
            <div class="dropdown">
                <label tabindex="0" class="btn btn-ghost lg:hidden">
                    <HamburgerIcon class="h-5 w-5"/>
                </label>
                <ul tabindex="0" class="menu menu-compact dropdown-content mt-3 p-2 shadow bg-base-100 rounded-box w-52">
                    <li v-for="link in links" :key="link.id" ><a :href="link.url">{{ link.name }}</a></li>
                </ul>
            </div>
            <a v-for="link in links" class="lg:flex items-center btn btn-ghost normal-case text-lg hidden"
               :href="link.url">
                <span>{{ link.name }}</span>
            </a>
        </div>
        <div class="navbar-center">
            <img class="block lg:hidden h-8 w-auto" src="images/logo-mini-blue.svg" />
        </div>
        <div class="navbar-end">
            <a class="btn btn-ghost btn-circle" href="https://github.com/devpt-org">
                <GitHubIcon width="20" height="20"/>
            </a>
            <a class="btn btn-ghost btn-circle" @click="toggleDark">
                <SunIcon v-show="this.dark" width="20" height="20" class="svg-inline--fa fa-moon fa-w-16" />
                <MoonIcon v-show="!this.dark" width="20" height="20" class="svg-inline--fa fa-moon fa-w-16" />
            </a>
        </div>
    </nav>
</template>

