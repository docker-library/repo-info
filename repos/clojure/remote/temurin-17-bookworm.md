## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:ab50afa11fd0cf910e612bbc0c23b331c1215a3c357bfd6697ae3f0dcbecfba0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:fb1b96b1e374e03ff48205d34ea30432a3ce2b1794908c8468fcf3972a707977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272643819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818f9397762fc2f66ba0b2419e018d7f13dc3f4be0577439c818feb57e1e0525`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:08:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:08:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:08:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:08:43 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:08:43 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:08:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:08:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:08:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:08:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:08:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0efe12366807aa35079907a1897682adf0a8d80da2aba0f755ff407c0149197`  
		Last Modified: Fri, 20 Nov 2026 18:09:16 GMT  
		Size: 146.1 MB (146114218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542dcbb96b46dfe3df24c7d677350b6aa430c3cef55b7d9aa2f32a9550448816`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 78.0 MB (78001573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f14a9727ca0dc039f1a5c7c69c8a6ea74a3c4327a757567a8c46202d8aaa40`  
		Last Modified: Fri, 20 Nov 2026 18:09:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bb17301035c884b51243f880a58ce4e8e7217bca6aac757a2a40cd5fb40a1e`  
		Last Modified: Fri, 20 Nov 2026 18:09:15 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c59da9ce0b1c8f1e0609f08524bbe4146f57ed308f2c92d331571dfb257b2e3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aba458c46e82034198e1e1810f59979d5740597c213e330a36138d1fcc2c67b`

```dockerfile
```

-	Layers:
	-	`sha256:8c8a6c6bad10f385376119b1718dba21b6a3d107d1a90726b902c39c50e7ba1e`  
		Last Modified: Fri, 20 Nov 2026 18:09:16 GMT  
		Size: 7.4 MB (7378643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:035d7f754c437d444cce82dc89d82460bf52967dbc31c0a7bc25c84738441678`  
		Last Modified: Fri, 20 Nov 2026 18:09:15 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-17-bookworm` - unknown; unknown

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

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6d37418f8f95e0acdb0ecec2eb5db68a82ecb386796490e84395139d68ffc4d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281086660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93be7af4beab6d1fd61ad7227e98378b47dcb9333a773c80e5f3157a4def039`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:23:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:23:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:23:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:23:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:23:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dadbe36c2b57a52313abab30daddc19e147c06473af05412120df0f4df64ffbc`  
		Last Modified: Fri, 20 Nov 2026 19:14:13 GMT  
		Size: 144.9 MB (144892682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8313d5eb153cf6d1ba4c45668b5ed572b75c8860b35f5b6b9be497a88c97d6`  
		Last Modified: Fri, 20 Nov 2026 19:24:27 GMT  
		Size: 83.8 MB (83823813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f05bd974027f22b687625bb2adca9e355de47850bfb042767d659275aa4891`  
		Last Modified: Fri, 20 Nov 2026 19:24:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312bf79de744e337113905476527a6510e8da67671b257d8e3d86cee096fce75`  
		Last Modified: Fri, 20 Nov 2026 19:24:25 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:07a3c699ca15d3f261498f214585a2cb9e45254efb089dd5a9107e2540137c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278d3050f8721790d6ecfa96bfda4474edee586833c0044e6d97e76807b0b59b`

```dockerfile
```

-	Layers:
	-	`sha256:7335e81473aa7b9a134a26c1650c5136d5a00f3ededfbf602f4a77444a3ccb17`  
		Last Modified: Fri, 20 Nov 2026 19:24:25 GMT  
		Size: 7.4 MB (7382609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb7cb21591e5bbb2366aae63a2f6dd3e0e5de95587de83eceebc612e23ff9d2a`  
		Last Modified: Fri, 20 Nov 2026 19:24:24 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
