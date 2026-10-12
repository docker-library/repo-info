## `clojure:temurin-27-bookworm-slim`

```console
$ docker pull clojure@sha256:89667763ac045788e4f7afa739584ffce1a16a456cde403f33eaf59f51de1255
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:401d3390d6364bf96d668f6432f366f92bd23ac67f10890b4538fb670d3e0f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190659042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b416bb8efc9ee588caeee86ae83d5d7cd945b0998b2655818579698c6645cf96`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:29:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:29:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:29:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:29:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:29:30 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:29:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:29:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:45 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc121093b8da84a62b248f34c7f8470619c0811680a100284931c7ebfc468eed`  
		Last Modified: Mon, 12 Oct 2026 18:30:05 GMT  
		Size: 93.6 MB (93622456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb7f9b44433b78e973a443b43ff0e4813fbd7211d25f94f953a241dec303e23`  
		Last Modified: Mon, 12 Oct 2026 18:30:04 GMT  
		Size: 68.8 MB (68786219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf3128966aef91eaef8d7805f8ad1c4c4366bb5364234171f6b7d76844f05b0`  
		Last Modified: Mon, 12 Oct 2026 18:30:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5f51f634cb5a79afa1a3800697dc593add064c932462f53121b9548b752fc3`  
		Last Modified: Mon, 12 Oct 2026 18:30:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:56558fd6324bad1a87e0dc9a611dfb06456f08741c303255aa96115a6e014e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2315819003fadcd5e5cd2c9dd36e78c7d561d5228bc451809a3a60466c068d`

```dockerfile
```

-	Layers:
	-	`sha256:3ce00fdd404b22d2b7dd5e49c2fe6231b4286f807398bb131a24cb4a6a87422a`  
		Last Modified: Mon, 12 Oct 2026 18:30:02 GMT  
		Size: 5.1 MB (5082932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2edb643bd7602df19b4edc2b0aae84ec0974c0a8eca85db791b8fa03dcc1df84`  
		Last Modified: Mon, 12 Oct 2026 18:30:02 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9046d8da96261530540362f3ec799eb6b912f7c1b6da3b417be935c54fc6c17b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189516885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933c112f6931395b005c468f326cd972c9875816deac87a259c78baf368c23ab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:30:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:30:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:30:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:30:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:30:52 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:08 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cb21aabb3cbcf3d0f42f008069ea9509b17d0ec00ae35995d987f9870814d4`  
		Last Modified: Mon, 12 Oct 2026 18:31:30 GMT  
		Size: 92.6 MB (92633112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73e424c76b559453fe6c170d5281fe249d6f269c2492dc357d3a2d50824686a`  
		Last Modified: Mon, 12 Oct 2026 18:31:30 GMT  
		Size: 68.7 MB (68745552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c586eb148df3fe364e280cb339ff6fcaa3110b1aa1557ec4e16336fab1d11b57`  
		Last Modified: Mon, 12 Oct 2026 18:31:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5fcd4c7a249204025b0763c579d1ddf94bca39b78f2bd44871fb33c157daf2d`  
		Last Modified: Mon, 12 Oct 2026 18:31:26 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7dd21c21c3c95de9637fa8909eb3d1407e32432329551e937ef918e372a650bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc14883e59c37959acfb8c1b386f90b1127f52e5dcdbf063ec7b1716bcc0b75`

```dockerfile
```

-	Layers:
	-	`sha256:3d341d31ea69acac6b6d687af113b0748a8098c8a7f2f4af4b23bad1a2afa5f1`  
		Last Modified: Mon, 12 Oct 2026 18:31:26 GMT  
		Size: 5.1 MB (5088690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b982f4475b5580c5ea7a544c4d5a1699acbefa44ece39601c7a73f01bd8249d5`  
		Last Modified: Mon, 12 Oct 2026 18:31:26 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bafdae18c56d6486d60f0206c1471c63e498f649bd55d04c9edad022bee5a84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.1 MB (199134112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c3abbe6ea7465b70445ca8ea67de06311def0505eb03d9b78f3efd189030a3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:20:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:20:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:20:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:20:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:20:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:35 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeb2b8835072278f513221af23f0b3665df65ecdfdf91aec3478ef9ec12499d`  
		Last Modified: Mon, 12 Oct 2026 18:24:41 GMT  
		Size: 92.3 MB (92255814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635d3391be7fdad162cd2fd3658acf9f326f83a6a8b44f526280979525efc721`  
		Last Modified: Mon, 12 Oct 2026 18:32:16 GMT  
		Size: 74.8 MB (74784820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac4ea0474fa249507e663a9f036b03be5c905f54669983f34dddb02d0c4a4e2`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf40024e1d9796fe8125da0527d098d0b2e88fcff147c0a6190dee006d1829f`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c43e626640f45633af7f184b35e80ddfaedc028f9a30355cd7a53921b1e56d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5088057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e478e793218b770c78f5c4b04bf7dd866dfa358a34ca6beec13917e91731ba9`

```dockerfile
```

-	Layers:
	-	`sha256:d339da784995f4c1f3483c78e3e8c74e47ae8a8239a8cbba332b4517d1622da3`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 5.1 MB (5072026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7b36f477dc597a6b64beed4ef28c346662ae6611981ae87d93935c83ca6437`  
		Last Modified: Mon, 12 Oct 2026 18:32:14 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
