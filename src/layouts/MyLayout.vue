<template>
  <q-layout view="lHh Lpr lFf">
    <q-header elevated>
      <q-toolbar class="bg-pink text-white">
        <q-btn
          flat
          dense
          round
          @click="leftDrawerOpen = !leftDrawerOpen"
          icon="menu"
          aria-label="Menu"
        />

        <q-toolbar-title>
          Vue toolbox
        </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      content-class="bg-grey-2"
    >
      <q-list>
        <q-item-label header>Menus</q-item-label>
        <q-item clickable tag="a" target="_blank" href="https://github.com/ilovechina9999999/vue-toolbox/README.md">
          <q-item-section avatar>
            <q-icon name="school" />
          </q-item-section>
          <q-item-section>
            <q-item-label>Docs</q-item-label>
            <q-item-label caption>Vue-toolbox</q-item-label>
          </q-item-section>
        </q-item>
        <q-item clickable tag="a" target="_blank" href="https://github.com/ilovechina9999999/vue-toolbox">
          <q-item-section avatar>
            <q-icon name="code" />
          </q-item-section>
          <q-item-section>
            <q-item-label>Github</q-item-label>
            <q-item-label caption>github.com/ilovechina9999999/vue-toolbox</q-item-label>
          </q-item-section>
        </q-item>
        <q-item clickable @click="$router.push({path: '/icons'})">
          <q-item-section avatar>
            <q-icon name="font_download" />
          </q-item-section>
          <q-item-section>
            <q-item-label>Material icons</q-item-label>
            <q-item-label caption>Material design icons</q-item-label>
          </q-item-section>
        </q-item>
        <q-item clickable @click="$router.push({path: '/colors'})">
          <q-item-section avatar>
            <q-icon name="color_lens" />
          </q-item-section>
          <q-item-section>
            <q-item-label>Material colors</q-item-label>
            <q-item-label caption>Material design color palette</q-item-label>
          </q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
export default {
  name: 'MyLayout',

  data () {
    return {
      leftDrawerOpen: false
    }
  }
}
</script>
