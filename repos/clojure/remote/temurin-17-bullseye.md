## `clojure:temurin-17-bullseye`

```console
$ docker pull clojure@sha256:43caf45fe63c5c434e4ae25d478dfdfc88ff124e65b348a9f4e5b0e29eb13a39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:b7fc03729d3360f6808cafedbdc302d3f0389939631a9a006673807bccd09265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266196412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204cd5d7993c4c41f2cf588f0e12d6b2fcef899032f7ec9de7231674519b1a1b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:32:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:20 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:20 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f34eb82defc7bd869997b75085ca9ed6762e5aee096407c38b8fdab00fe005`  
		Last Modified: Thu, 16 Jul 2026 01:32:53 GMT  
		Size: 145.9 MB (145906318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f7d49e505caa1223f8d3a61bcd39bf3ed363eee0d96d534cd82e363b3862b2`  
		Last Modified: Thu, 16 Jul 2026 01:32:52 GMT  
		Size: 66.5 MB (66512481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1260507977fcda1645cc974015a5f9b823ec66b9837959df15775f2991b5963`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d2d57319562246a5ecd2f470ffe8f7ab6c02bad2c595374f4fdee4533bfbee`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5ec04305e54be7c684a5ace130be0d40ca466529f372df62f8ee07661cb0b727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5f18c5ec276db1302a55a80dea6f5e4539e7389cb3b362602f91d1fa2933a4`

```dockerfile
```

-	Layers:
	-	`sha256:a1c368cb39eb2709f20dc4653bbb5bf924d7b44e0e29a8bf5271231ae7a65e0c`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 7.4 MB (7405449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70b42488ff3a0fdbd647718ba33a45ace6a82952cbc066524ac1a4c6a53e7583`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:97241608a884cb18b708c61b9e8594128f63ede16ad98dc50656eeb7321be1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263664068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf74c8a11fb97e7416cb4e7f52533f7b45d87c908d20182089bd77cfe2c2015`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:24:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:24:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:24:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:24:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:24:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:27:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:27:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:27:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:27:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:27:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cc1bb1c4907785b39f87818a2acb564e321b6356140ccc7bbf161295903b20`  
		Last Modified: Thu, 16 Jul 2026 01:26:01 GMT  
		Size: 144.7 MB (144724316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1451ee68ddc7a5d1e85bdadc19e9ba1a57028eab82bc026227db41043a3bf47`  
		Last Modified: Thu, 16 Jul 2026 01:27:33 GMT  
		Size: 66.7 MB (66677821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919cbb47567b3e0962839200c11e5774c9283a1c0145da81045bfbe69bef3a6e`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc20062c85ac49eab43e9bb0934b9873f39c8dd78adef49aa41ef77f7e13aca`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:406ac89331248eb2108566d166f31c39fef728767f9f5d93221dd223a2843f36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7425642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26ac7fbb7ea87f5ce6002f651d637fbcd117d372ed7bd2cf6aa56f3c1105603`

```dockerfile
```

-	Layers:
	-	`sha256:41d127e3272723d486f9472d800ef9fa2d8d7002bab1728ae76d2c96a663316f`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 7.4 MB (7410548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf5488d4dfe6e91cce04ec217c3d65322034869ebd11110b7c3a1b2c38907663`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 15.1 KB (15094 bytes)  
		MIME: application/vnd.in-toto+json
