## `clojure:temurin-27-trixie-slim`

```console
$ docker pull clojure@sha256:9751a6e31ea2f8c48f9868c69a4f54e462212bc95a18ed9ad6924e474693c4b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:111e1c35c0ec0b0654f83129a29e6efa2ee9feed57f6a3e1ee1c3e49671112a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192468154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2faabaf5ef091e314c2a5ae6c7ca01cba3a8d7f2c8b39ae86997983ac57071df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:16:58 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b677b30daef80acdd12d3596cb15e15bbd6d967ba3f4246e0a27c2cf63c2c8b9`  
		Last Modified: Wed, 28 Oct 2026 02:17:35 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46158dca4632a00089534540f3b2637b7ef4ac0f5ad4fd433fedc29dcfc74f28`  
		Last Modified: Wed, 28 Oct 2026 02:17:35 GMT  
		Size: 69.0 MB (68989392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd744c72eb016e63bd2f185cea59cc0b483c58c33564a7da84151927eb1e94ae`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354110647589e89f26e2913548b4a2f0630d6e23b666beb3eb0925f955f45685`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8d0dbac0c9fc998fc207af7dee15ac1c679b0cc41a522c44450fc3fd25e9a797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:868c02ed95e863a41d0475b010ecec189a2f574d83c8ddc0d81b068e50e9f9eb`

```dockerfile
```

-	Layers:
	-	`sha256:987964c4373052eea84a44c7349a5f0f80efff0726dc55066aaf1bde3c6e1d32`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 5.2 MB (5225689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7068b69da5313776a1d83e4ef69fd90153363d4342b58bbd69777cf00bf0f236`  
		Last Modified: Wed, 28 Oct 2026 02:17:32 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:874106818da34d109a85f4eb6df9fbc809bde83aa2b99698d79edfadf5414194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191652792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c849fe6f6aabe5e4054f218712d359d75fb8ebf7bc803d3e81662878340a7a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:24:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:10 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b444be3f50ed5ddaaa11ec64aa51d2a29019ef09ea46f8467834e2b1b25fa6`  
		Last Modified: Wed, 28 Oct 2026 02:24:49 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cab3f5d16f94b72096df9f26d0c1d28484ecabccabb2daebc494e2b84d71a9`  
		Last Modified: Wed, 28 Oct 2026 02:24:49 GMT  
		Size: 68.8 MB (68805107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b32a18314450bf52b5e2913f91b83d4ae70faac589782e88024e5bd997680b`  
		Last Modified: Wed, 28 Oct 2026 02:24:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb7fe7c364fb92b2a4823aea15d05f562e4ee7d662b071504ac0e068c09655a`  
		Last Modified: Wed, 28 Oct 2026 02:24:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7de30c232de8ce3c672e43e65d361c90c7459b78155315ab359db81b006e5136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb91ccb5f5856e0a5254decccfd663b67c660f2fca5ca456f2af8ef8b996bef`

```dockerfile
```

-	Layers:
	-	`sha256:32413c22601b938489f3848d6fb551d848cfaace79076a16f0d32dcd568a464f`  
		Last Modified: Wed, 28 Oct 2026 02:24:47 GMT  
		Size: 5.2 MB (5231447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0213f75b45ecf3eff59c1b66dd212e258b1ebd69b4028c2a8a0d54b1f5688248`  
		Last Modified: Wed, 28 Oct 2026 02:24:46 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ae255d3213874a58e94eaf117bd77746f68e9cad98907af00d5b66d2c4dcb727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200341683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d923e34d6e51ebc9dcb0a65f04ab5834d7a55bae8f849b353cfece94efe4668`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:42:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:42:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:42:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:42:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:42:51 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:50:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:50:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:50:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:50:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:50:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df4cbf3f0081a4c36c043314ee49a6441283570fda8f8284250858e1ffc2acd7`  
		Last Modified: Wed, 28 Oct 2026 10:46:52 GMT  
		Size: 92.3 MB (92255793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b5e360bf73f49bcc18fe8f18d59d8441ec75a9b8c9e0ec4db3c19cc585bdf4`  
		Last Modified: Wed, 28 Oct 2026 10:51:00 GMT  
		Size: 74.4 MB (74418583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03c40454be20d88a44f8a8cf4ec5da50be7adddd0d4a389fd92b97bb51ea7e4`  
		Last Modified: Wed, 28 Oct 2026 10:50:58 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054e9b22045d521b2ad31fc66a21053a70422beb1988218288f725e64f66d49c`  
		Last Modified: Wed, 28 Oct 2026 10:50:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:204c5e1cb23d3f5e4ed4ada934c09bf0b46b8e72abbec0f7f304c8212c11108d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc40b8be3eff8693e092ea85c4448a6f76056beb129e3a4996998cdf36b58d`

```dockerfile
```

-	Layers:
	-	`sha256:9c29d4bcbec052ba0f7aa2c53a827b9fba03688778b7b01eb798c9d8c81ea9a7`  
		Last Modified: Wed, 28 Oct 2026 10:50:58 GMT  
		Size: 5.2 MB (5213996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4944d9725fef7004ce4744b65f58038401ee0f2c11858a4b4895e4192e9ffde0`  
		Last Modified: Wed, 28 Oct 2026 10:50:57 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
