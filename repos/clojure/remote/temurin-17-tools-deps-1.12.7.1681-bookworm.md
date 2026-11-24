## `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:d537fe4403e22e17e25d4fa5ba42a4bd675c3d175a2cc67b96eb5886950be3df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:da0e940d01efffeb77d003c27265a9ad30635d60aa1a6aa9fb8b524aed7c4f47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272643577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c692e9573e4381aa3a3eaac96c9c1bb8a4076210ff67f5cef36b4c99dd20ab0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:10:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:32 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:10:32 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:10:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:10:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:10:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:10:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1e6e7ca511b93bafc42241ad75a24d3a61d0ff7191dfcd2337b8c61b142d978b`  
		Last Modified: Tue, 24 Nov 2026 03:39:45 GMT  
		Size: 48.5 MB (48526379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b17e55b098f490cd3b6c5576937e31afd81ebd6caee3622e6e80038989a2a`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 146.1 MB (146114278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fe397916f42c61d585da823e4b1ae164755d31a07e8ebb8fd0a7cf4c053c2d`  
		Last Modified: Tue, 24 Nov 2026 05:11:08 GMT  
		Size: 78.0 MB (78001383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eec26c2c9b4c6e499ea8a071ae456e5d7eae8b733bd681b8da01ca079a872d`  
		Last Modified: Tue, 24 Nov 2026 05:11:05 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b04c1214fcb5f76c7118f4a7d5eb5ad9ea6043963ba4d067af2466b4eb52fb`  
		Last Modified: Tue, 24 Nov 2026 05:11:05 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3925ea2747be80d3947b447cbe641cff4b5f4bb16de0672493391c501e5c758c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c125a1b36a7900a834c9a7d871b7a8bcfffcc5411ac3cd195d3d62805f3aa5`

```dockerfile
```

-	Layers:
	-	`sha256:16b030a07fe5e7e81e3f31a26f43f8d0bb7384762445be01db0611ea614712c4`  
		Last Modified: Tue, 24 Nov 2026 05:11:06 GMT  
		Size: 7.4 MB (7378643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361690803a5e6d6683c3a03cedbc15a3520764538c1540f25e05e543b809f82a`  
		Last Modified: Tue, 24 Nov 2026 05:11:05 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d73489ac4de199284629917a215045d6f84d8f2c0bd03c91082025d17e05d968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8124216f292aa0d1bf7929a0165f1f2fcf1f639fcabfcaaae1cf1de49f712ffd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:38 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:38 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:06:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df3159c45e6dba7aee1d9cea8136b6de29db98d1e8f8988c043546d4e279266`  
		Last Modified: Thu, 19 Nov 2026 22:07:18 GMT  
		Size: 145.0 MB (144957172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6501078f3795bc9b0d41b71370634356e980587d61b46881c05f00dbe690778d`  
		Last Modified: Thu, 19 Nov 2026 22:07:16 GMT  
		Size: 78.0 MB (77997556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230f36ab789981ebc562c3bb915e6d8f2772353f163db0f766f159f258f9a308`  
		Last Modified: Thu, 19 Nov 2026 22:07:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0ff2164c4cc06cab373fe53e253279d069deacda0bdf6ba41750181558973c`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4b015f70dddcc723eafa04a2e1d458c3c94b1f5a860947cdff3d25dbed16b6c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bdc8c1b5bc0a7aaaac167bbe966544a63173d7a4fa38e413f76f7cdc74c7dd5`

```dockerfile
```

-	Layers:
	-	`sha256:ff35c0cbda4c5a28b592b8cfd91815a17edb1f1e159ce458ddd42c8f7baf4b37`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 7.4 MB (7384398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4db19572f776f073b3cb72d6f4a35c6474ccd7fd142d067d6cb51395ffaa71ce`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9e2abbe3bb812d0f6f6846477a8a271798de2c7e6764e8337d180062cd63f52a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281086941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10f15e44c965e00fa3c9c1ca029577eaa183b0cd73529292a38655c10be47b1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:33:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:33:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:33:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:33:17 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:33:18 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:42:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:42:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:42:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:42:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:42:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:936a6a1e0c40eccb1f23047919ed843c0c969e4e372431764e94fd25b358e9c4`  
		Last Modified: Tue, 24 Nov 2026 03:39:19 GMT  
		Size: 52.4 MB (52368504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6a11376a5cd3ce624061de944a2f493e3fa9f8577b5d35b80d917423680ef3`  
		Last Modified: Tue, 24 Nov 2026 12:36:46 GMT  
		Size: 144.9 MB (144892597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee186663473efc905838291a5e13376b0b429f8e0729f9e656821e20549d25f`  
		Last Modified: Tue, 24 Nov 2026 12:42:47 GMT  
		Size: 83.8 MB (83824297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a582541a163837aba99e8629c1f1ffda2c51ed569bec1445c09c955bbc3bbd6f`  
		Last Modified: Tue, 24 Nov 2026 12:42:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7f157410963ac74dbbb6f463717d1568e8f84ed400d61b94c816d41cf2e6f3`  
		Last Modified: Tue, 24 Nov 2026 12:42:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7bf4a6b828fab7355c2a367b4cf250fed6a45058f4f35d78e0b9a566a104c37b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd4bbb30b5b313b8d7643cfadb9f73e81b5431a51d7af4ac9de905bae84670d`

```dockerfile
```

-	Layers:
	-	`sha256:cf272b12434a780426beaa9ca1f017d7406e9a21103051b2807a01aa7607d33c`  
		Last Modified: Tue, 24 Nov 2026 12:42:45 GMT  
		Size: 7.4 MB (7382609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d3533bfccdc10b520dccfdf13f9f4be1565214a7cc0857ada2fc7106313ad67`  
		Last Modified: Tue, 24 Nov 2026 12:42:44 GMT  
		Size: 16.0 KB (15978 bytes)  
		MIME: application/vnd.in-toto+json
