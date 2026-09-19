## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:1cf0a9c3768de6ee13efceedbfbe3c1a4a24228cb07cb53c2e287fc553980ace
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dc411b4b9b88df973c52753f44e449c15aaed1248ad43ec9d008b6c1696261b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253044648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0ce12e7b8fb14d6e1b1fbe62af5bdc5916d18b1e4d403d2f4ae199eabaddaf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:16:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:16:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:16:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:16:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:16:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:16:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:16:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf3a0be14c091d06de0302bd60b3eecb5bd505c70c244f7d5b5b59ad26d9686`  
		Last Modified: Sat, 19 Sep 2026 01:17:00 GMT  
		Size: 158.1 MB (158120297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929b8d6994f15da1254415aac3e9d51c9835b6fc6ed209d7478eb03f7d89b06f`  
		Last Modified: Sat, 19 Sep 2026 01:16:58 GMT  
		Size: 66.7 MB (66684868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946d8b463c0959acb6ec4f6ba52a10610f718becded2176c584afe557ee60839`  
		Last Modified: Sat, 19 Sep 2026 01:16:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974b3933f971511dd607cf2925c948eb990850f9c9681745f5063fdeab4e2fe9`  
		Last Modified: Sat, 19 Sep 2026 01:16:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:46f3e9941c294425ec6047f239d7b64173789fe91915a2abc1638d9aab02f049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9d52d922d76e794147dacae9c25dcf5a8d67909cdc24c88644afcb5c32c963d`

```dockerfile
```

-	Layers:
	-	`sha256:4747313023a1ef1784ff6a7728f6cbd76ebde894a2ebb6e85fc754fbc2a94593`  
		Last Modified: Sat, 19 Sep 2026 01:16:56 GMT  
		Size: 5.1 MB (5121152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23f64412031a7cd86d7bd89166b63ffb0ecddafdcef2074f9ef2c2548ab43d54`  
		Last Modified: Sat, 19 Sep 2026 01:16:55 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8068e23fc16259a2faee4722ce5528157cb568e628bc7267b350faf8ca35268d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251210372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6694c63bdc6bdd35896c45e3e406404c82404af3ab165228e95e9de6a05d1b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:23:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:23:18 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:23:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:23:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3812db7ce6a47f29d582ad2d29accb71109bfc21a2bf3f90873808e0e36884`  
		Last Modified: Sat, 19 Sep 2026 01:23:57 GMT  
		Size: 156.4 MB (156401959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b717520e4c7942b9a4a23079e386bbcb8b96794b6aa592b5bc9847d36d1ae5`  
		Last Modified: Sat, 19 Sep 2026 01:23:54 GMT  
		Size: 66.7 MB (66683690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdf456fec8a5ff6316d0c30f07c3ff08288b3813010f2871552f5e3491f4165`  
		Last Modified: Sat, 19 Sep 2026 01:23:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17987ea40e0705704ca0fe8f439154a01b03ec13428c2fb26e54866ebe72b519`  
		Last Modified: Sat, 19 Sep 2026 01:23:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a97db7102200c173452fd545d6a3b400230bd29f5fc09b3a08bfd0cacfb09f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5143021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0fd689ff90698fd374d67aee2d8fccb4aec458a38cae59eb9c9a21662b237a2`

```dockerfile
```

-	Layers:
	-	`sha256:7dd7a91847fc3f833b495c80733d56ac45f1487009e94e01e69c84385f26ddea`  
		Last Modified: Sat, 19 Sep 2026 01:23:51 GMT  
		Size: 5.1 MB (5126913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a17bcf3034ae81018d920d8aadf88811dab0a3505017c9a8bf8caeb81f1b5b26`  
		Last Modified: Sat, 19 Sep 2026 01:23:50 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9983c636ec26f1a2b28f9f41c3ae1ac68c5aad2a9294a1027dfb428b5a5e5498
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262858465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf892d461f60d22b4bac65c655b0e532caf9c8298bc442e88879f452dbc796d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:03:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:03:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:03:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:03:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:03:06 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:12:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:12:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:12:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:12:51 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:12:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5584cac42c70ce6b21896391a65ef3f8918f712975e83d58d00a1f1ca66d305b`  
		Last Modified: Sat, 19 Sep 2026 08:06:42 GMT  
		Size: 158.3 MB (158274928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28c901e0d4a8d586081be7311bde506b919294d10445404d2fddc0397fdd8ca`  
		Last Modified: Sat, 19 Sep 2026 08:13:24 GMT  
		Size: 72.5 MB (72498931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe4c7a7fbee9f518c0a44252b9d644d980df6f562c037bcbdb8167b351f8d91`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4c0a2d06379faa0e16a64e5862fb3b63335c9f691d574e883f2444a950b211`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:39859a2db0d53a017c279b9d4b5539740da9bab34bd343700eb6eb7593aaaab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5077ea5fdb41e16682d42f81e551fcab4e9fba841e31dde4e2708829de1996fa`

```dockerfile
```

-	Layers:
	-	`sha256:ae61ea49a7e3e8ec4a6950b89157aa97cc85a302fb0311f406b1ba01a23ee55b`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 5.1 MB (5126310 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af3e278614f19cd2e5d31cbe0d048e6f8a2c6e7f010bbfab41988a64c02c4f7`  
		Last Modified: Sat, 19 Sep 2026 08:13:21 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
