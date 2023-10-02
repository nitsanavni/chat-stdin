The `chat` script already works with cli args as prompt.

```shell
$ chat "explain this script in 5 words
> 
> $(cat idiff)"
Script for interactive diffing using Git.
```

Let's have it also take stdin

```shell
$ git log -p -n 5 | chat "what was I working on?"
```
