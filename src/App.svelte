<script lang="ts">
  import { user, username } from './user';

  let email;
  let password;

  function login() {
    user.auth(email, password, ({ err }) => err && alert(err));
  }

  function signup() {
    user.create(email, password, ({ err }) => {
      if (err) {
        alert(err);
      } else {
        login();
      }
    });
  }

  function logout() {
    user.leave();
    username.set('');
  }

</script>

<main>
  {#if $username}
    <div>
      <p>logged in as {$username}</p>
      <button on:click={logout}>logout</button>
    </div>
  {:else }
    <div>
      <label for="email">email</label>
      <input id="email" bind:value={email} minlength="3" />
      <label for="password">password</label>
      <input id="password" type="password" bind:value={password} />
    </div>
    <div>
      <button on:click={signup}>signup</button>
      <button on:click={login}>signin</button>
    </div>
  {/if}
</main>

<style>
  div { text-align: center }
</style>