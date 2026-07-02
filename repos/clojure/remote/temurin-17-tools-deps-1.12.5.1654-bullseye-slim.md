## `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:49e2a593ecc2403041d19510137979a113e80c3d346035baf91b0a10b001c9d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:20784f149da082936eccebac237a16d4639df407f5224ff5addbb47c180c5092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232267118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba48960026081df83ca5a333c581e894d8f0c50592bd85c359f629783da83c80`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:51:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:36 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:36 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:51:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5640b0094745e4c588c4a63c00913b1a7ce4c58e097777cbe2f52708a20e50`  
		Last Modified: Thu, 02 Jul 2026 05:52:09 GMT  
		Size: 145.9 MB (145906330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4808c129e44eb2c3d3b7ae78ae7e413c6c0367a8ede614c8e646c339dcbc0a19`  
		Last Modified: Thu, 02 Jul 2026 05:52:07 GMT  
		Size: 56.1 MB (56100301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e52d528300f32009198fdb678bd1137efb78d5929cbedd2db7f9ab990934aba`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58febc11635bdb80e464fb4b390c5a7b111f521563a8c4f08c07b19eb8491324`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ae836eb1e031b560dd18dcd7a8bbebf77e31bff97f1a16828df4ae9f8cd88961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130a966ae097bb6707bb8ecf68832a07f065a9a5ba50c70309f50d6cbb2202f6`

```dockerfile
```

-	Layers:
	-	`sha256:cb5842d7cc95df0522de29715a60ec98cdd42c66d12b5c7b14295eb1462df033`  
		Last Modified: Thu, 02 Jul 2026 05:52:06 GMT  
		Size: 5.3 MB (5317849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38e43cd74afb895e0b0404433d4b714282b1cbd21958d33c835c31f4561868c`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e15b1794099f9d91c9f1f65ab816b9e59589a44987d01e732fc931e820a4b88c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229739627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97979e3f19d05e71e9e925d8f4246a97d15598d4b96706d54e76347a97baf683`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:52:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:03 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ad1af922f078ff2339df987020ed6f30c51617a8ec1df295865dd04b2c9d4a`  
		Last Modified: Thu, 02 Jul 2026 05:52:40 GMT  
		Size: 144.7 MB (144724296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1279a5f19adee11b007c2905d56a694a7a2bdc3847a2a4f6d87e0953fa985dd`  
		Last Modified: Thu, 02 Jul 2026 05:52:38 GMT  
		Size: 56.3 MB (56267362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dae61a7c3fcecb44c9e5b52015c3f4e384453100e1f905d90ff94276a871dd0`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcf367b0b7161ccae91557acf33c9575e6856b7e669a905603c8332597add32`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2c67c2e0099142a45437b8e38a45e15944964176b2cd2b70a56f9fa57507b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af97af362fa74711115005299f7e003104a46386b7606ad87591b802f73c9ac`

```dockerfile
```

-	Layers:
	-	`sha256:d917a1c39fca563c2d469537c01301272c1b2d43b046196d3c3dc5148c260670`  
		Last Modified: Thu, 02 Jul 2026 05:52:36 GMT  
		Size: 5.3 MB (5323581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34f438edaf1a42a658a0fbf6201b7aa22e2fb0ff5522e1a67d3628ed73c93617`  
		Last Modified: Thu, 02 Jul 2026 05:52:35 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
