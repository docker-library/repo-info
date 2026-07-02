## `clojure:temurin-25-bullseye-slim`

```console
$ docker pull clojure@sha256:60bfce459ab8fe44a43fcd64833c6be031a014f73db2fb265336faf4589c4caf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1b316102b60007135550bb9ae8f5d17ac549e26d4a93f3a8382ab7e0dac30965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178935338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a7e573dff80449c3c91ce0d2623468f6db3d45dd677f4d5b5e1b0c874716a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:55:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:17 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:17 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3da6e1d60d48f7611162f2b364eeba871abaf21ee4d71a1ed4187bca8c5975c`  
		Last Modified: Thu, 02 Jul 2026 05:56:36 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf0ab627487629fe214a77a002526ecb91b6bb59c424e28cd0f1a8976c5909c`  
		Last Modified: Thu, 02 Jul 2026 05:56:35 GMT  
		Size: 56.1 MB (56100262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3b577280912b012f464f98bb40df3a254fbd5558116e909907b934d2999647c`  
		Last Modified: Thu, 02 Jul 2026 05:55:48 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1f2d461c88af2dae52ae83b022b0f990c81fb86a880d75d6f320aa136eb959`  
		Last Modified: Thu, 02 Jul 2026 05:55:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9adf3c76299cf6326f037b10d8dc076a0bcb9b43484d745f881b5092c180e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344f99c508abe1cba43897d6843f68968194442cd379039da28115ffde778de9`

```dockerfile
```

-	Layers:
	-	`sha256:0bd7adbbb3cd8a0e29d18e34a26bd6a56e0df227b3d39135396ee15b7707bcce`  
		Last Modified: Thu, 02 Jul 2026 05:56:10 GMT  
		Size: 5.3 MB (5285939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:626c475fd63bcfc52cda533cb6a103b9491749c75914ea559f4127efe467fac7`  
		Last Modified: Thu, 02 Jul 2026 05:55:48 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:874bf8f991eeeff8a433b60b7dbd32e906ff1b1f1901053574952fbfac3f560d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176558070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fe45b733ca1b3e2758b970009ceba3b2b22a847691271908a274578727e1c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:55:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:58 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:58 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:56:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:56:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8bded0bc7a079fd57a8e21e82ae249ab242eacb417c96a1e2fc681817f89823`  
		Last Modified: Thu, 02 Jul 2026 05:56:33 GMT  
		Size: 91.5 MB (91542249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c99dbeea42c84b306db1f411329172437b5fa9de5de916c2759bbf34e20a7d`  
		Last Modified: Thu, 02 Jul 2026 05:56:33 GMT  
		Size: 56.3 MB (56267852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae34c9726ea1c95d191669e194cea81556745997fbb616a5d4cc9c4119701c6`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c670824ce5014b27fac2bbefb372880b539231861a7c6a417ed8f1aae9e7dd`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ab9af17a7b48d56d2566a4701e27f64325cd042343b3377932c9ac3d947af38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5308511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7f6f0e0fe8c38f1b4eafff54916dbd47f7963ba236431fbd355d2bde35d12de`

```dockerfile
```

-	Layers:
	-	`sha256:5d10f4aa568829d84b92fcc6986b01eaf27e442ebd1e64c1d6e9d45568905f50`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 5.3 MB (5291692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c60208ccd3a45c5e3adfbbc413a44330d9a8bccddb5dacae97826203286c6172`  
		Last Modified: Thu, 02 Jul 2026 05:56:30 GMT  
		Size: 16.8 KB (16819 bytes)  
		MIME: application/vnd.in-toto+json
