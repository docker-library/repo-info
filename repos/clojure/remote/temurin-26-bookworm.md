## `clojure:temurin-26-bookworm`

```console
$ docker pull clojure@sha256:ed98afd024ea4c8333c999af78eda99127958993396b9793ef0a3134d7d2cad3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:17524f0003c1ea5fc3bfa4a612b31b17c61e9315b84ebca08510a20f95006c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221241800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2dfa38aa0a5bb9602ee79ce7a767c80e6c6199eb8c57e8ff9fd9901da91af65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:18:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:18:14 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:18:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:18:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259010fa40929333ad0822a98a1728271aed7771f0dcc8321a6002ba682111b6`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 94.6 MB (94563717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b608067984af9a6c0c7e98c102938fbc592c594f4c5c329c355f00e1f5f49fb`  
		Last Modified: Sat, 19 Sep 2026 01:18:49 GMT  
		Size: 78.2 MB (78173601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8e7337407ea02faaf266011eedb527ac8966eda13f9796add6ac8690568f71`  
		Last Modified: Sat, 19 Sep 2026 01:18:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc25da4169485c1faf8ab6d9a52afc15d556cb02110f8df4bf34280754c50979`  
		Last Modified: Sat, 19 Sep 2026 01:18:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9a299001e3ba0ca14037e5647563c388e257237c920c384bd3d55b6650d913e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688cc1b51dd3c8b4e66c8d9a73b587d2f0e1f948917d2536328a909aaf8756bd`

```dockerfile
```

-	Layers:
	-	`sha256:9addfe0e9158b15732e41133df4a9b7c738de5fc1c852e9270950a6ecf74e4e0`  
		Last Modified: Sat, 19 Sep 2026 01:18:46 GMT  
		Size: 7.3 MB (7346211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dfc474c2c48770306202a6db12692e1721bfa2813909ecd9be61710c95705c6`  
		Last Modified: Sat, 19 Sep 2026 01:18:46 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5321c972d17b18fbc193f924c2b49086e69f5a10e05add1792267d1f03762dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220106974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff02501788f01ad7a2f41ec594d12ae0b724af145b5fa9ddd77fca2c901d68b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:25:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:25:40 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:25:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:25:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4c1d2f69312a4049f9a840fe0efa0cc5b8db569886851498aaf37b29d28c60`  
		Last Modified: Sat, 19 Sep 2026 01:26:17 GMT  
		Size: 93.5 MB (93541603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf170bdbea7917313aa2a36609144a66d0b613da3e630242e7577c5bffd6828`  
		Last Modified: Sat, 19 Sep 2026 01:26:16 GMT  
		Size: 78.2 MB (78174420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c67bb68fad669be396b12b2de1efbd4e1fe2fff22322c04a85ffdbdb50ab3c8`  
		Last Modified: Sat, 19 Sep 2026 01:26:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cf0f860840d6ad5b18e713545d61cd52b3bd8570e7e5d995e3097fca2bee8d`  
		Last Modified: Sat, 19 Sep 2026 01:26:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9bf8972a02d4ad92bab605ff7e4e872cf317af5c0f80d0563bd5aab3948d3dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65670784432cb984dba3b261f92b4d36519e28dc96cf17fdc105d0fbe673e735`

```dockerfile
```

-	Layers:
	-	`sha256:8077e5aafca0aa1e86a30cd6304358c36c507f794389961f23c7402337482d8c`  
		Last Modified: Sat, 19 Sep 2026 01:26:14 GMT  
		Size: 7.4 MB (7351995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b7ef97875286aa40cc3b5c086f7d7d436afe92d476012c0dd5eb8a8a7a1805`  
		Last Modified: Sat, 19 Sep 2026 01:26:13 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:84e2369e5a5db6739ec9c9fa13f9844730c6632001c8a12a04ee5adf973d2147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229691138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9228713e0bb1cbc0a3bea202abc3a998b1f37f64b8ceba43df3e308d7e4624`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:25:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:25:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:25:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:25:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:25:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:34:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:34:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:34:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:34:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:34:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0ea178bd9b8f54952386421fc62686a8d2b05eb41552facf4c9c28231ae087`  
		Last Modified: Sat, 19 Sep 2026 08:29:22 GMT  
		Size: 93.4 MB (93350791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af285fd7f40f2bb139a269039013eef2611a26e2732394f88fe1b5ed55ef814`  
		Last Modified: Sat, 19 Sep 2026 08:35:08 GMT  
		Size: 84.0 MB (83990000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d180374a302f9a4ff8b346e3dbf906fe51241a1941b2b3a63284c312372e8636`  
		Last Modified: Sat, 19 Sep 2026 08:35:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c80343fbe6a2ad888f76785a2ee0147aa3dad002b0f93725c60e070a7779369`  
		Last Modified: Sat, 19 Sep 2026 08:35:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:78ba701b5beef6ca04b3fe412d044dfd599d690efe9e1af2a3a6b2199fa28398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1180373541d11eaff9f78ef11727784fb7d145c1c3fc3a5764c71267e50d55`

```dockerfile
```

-	Layers:
	-	`sha256:c8f28f985b16bd2b1032e6de267a4ae3621d9b80931e4cdc2beff1eebbc40ed1`  
		Last Modified: Sat, 19 Sep 2026 08:35:05 GMT  
		Size: 7.3 MB (7335373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c151b083f7419a616105369e1ab5bcb75e1e982d578c917320118654c75c1cce`  
		Last Modified: Sat, 19 Sep 2026 08:35:05 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
