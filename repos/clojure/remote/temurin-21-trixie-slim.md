## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:84ff8f6a6f3a1e243fe1879786fe6a719a45dfe075791bac030170a90c7ed504
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7ef64ec166257fc7494f729b6dfbc6fa96612b04c23161827ca533e554c1bbb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.2 MB (262244526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac69bc2c7aab5a22303a1cb5b4df8af616d767dd5522efcd3e0d62e784d18eb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:36:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:36:00 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:36:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:36:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:18 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc823e2234b17ea315ece98984944fa3a62b3170e5264d7becd2f4ba56008135`  
		Last Modified: Wed, 16 Sep 2026 04:36:41 GMT  
		Size: 158.1 MB (158120292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cad1af7c77caa46dd3415805ad20d2b154c7283da135c8bb9a400ea1d481bf`  
		Last Modified: Wed, 16 Sep 2026 04:36:39 GMT  
		Size: 74.3 MB (74330533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e2d695dd89910ba56f37a8c2faa788cd65e96fecc67fe402df8e9bd13c103a`  
		Last Modified: Wed, 16 Sep 2026 04:36:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b23a9fd6eaba753cf235d96867d50f79f59f70da8f5ada057ebb8451834867b`  
		Last Modified: Wed, 16 Sep 2026 04:36:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4da2c6abd483e0903c6ab41110c0d0567bc02fbb076976b932550565f7a5ea23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43673e11ce46a115a1625f08edb4c434d0edad9e71dafc195c3b45ee8d19489d`

```dockerfile
```

-	Layers:
	-	`sha256:c66964433b970d05f6467c88949339741a34d92b48ad18dc601f80a7b9a3dd8a`  
		Last Modified: Wed, 16 Sep 2026 04:36:37 GMT  
		Size: 5.3 MB (5259484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1837a243bf6962c8fd194a701fe6ae704fce83c935fd29db522e086da695a452`  
		Last Modified: Wed, 16 Sep 2026 04:36:36 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cf85eba8ed0dfe018f74a9a60acacf3ff73850be98bb029b1875af21978b535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (261037637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8728a2f8cefbcb575315091d90b7a7bccad9fde7b9f3354ff542e1f038c7e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:37:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:37:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:37:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:37:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:37:02 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:37:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:37:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b747fb05269a68c3a3a70d367ca54f3fdc60887b7be9371ca8761d91748390d`  
		Last Modified: Wed, 16 Sep 2026 04:37:48 GMT  
		Size: 156.4 MB (156401969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cdd9aebf39a40740a79efc6ad9778b4488e4fed0e795d6bf0fc3f95f369e0a`  
		Last Modified: Wed, 16 Sep 2026 04:37:46 GMT  
		Size: 74.5 MB (74475040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0a86ad08567fc44e371ca6ec45552c75a37ec95d5638084f22f759578114c6`  
		Last Modified: Wed, 16 Sep 2026 04:37:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f86eb8f9e8710360b012896007c77e68eafd2a1a99c9aaa53b4c388a80338b0`  
		Last Modified: Wed, 16 Sep 2026 04:37:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ca6b9a4948b107960bac80466186a2d558648b4128a4a4676595f0409658f760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ab91f7e43ba3c7ced17de7dd1bb6a18ec76de76f3f75b8e0c98f73be50715a`

```dockerfile
```

-	Layers:
	-	`sha256:06c8591eeadd3cae4027e1534af708e3524254fea56a48b5e58a67c030792b40`  
		Last Modified: Wed, 16 Sep 2026 04:37:43 GMT  
		Size: 5.3 MB (5265245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0325f2e98aa4488edca34a316bf3a9c28ab686110d1f468507d3caf40a6efcc2`  
		Last Modified: Wed, 16 Sep 2026 04:37:43 GMT  
		Size: 16.1 KB (16082 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:943741e83687ed302c8f0ff44042d1f477a62f7284fb26c9b4bd39bb3bfc3947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269466892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc06e55a4baf70cd775cb3afe891998a56ca98c5109fde89e79cb660bc0bbb88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:25:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:25:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:25:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:25:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:25:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e00a40e150b754085b447c73428d6b28deadec22215738965200b831c00e02`  
		Last Modified: Fri, 04 Sep 2026 00:26:20 GMT  
		Size: 77.6 MB (77575500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34909199bbf26a1217157fccc8df1debe5c5c72b20eece928d1ae04d99223e84`  
		Last Modified: Fri, 04 Sep 2026 00:26:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f972c76f25410738ac3c2365e26ee64750b8047d96acfd2fb366be1d39aa62f`  
		Last Modified: Fri, 04 Sep 2026 00:26:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6d9abec8f40c86317733af07a90e7bb44e3fcc7c449ec104561c145d72394647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff44a3722c6c47669c900daf88c35fdee69a1a857a8b83565c0934d438c309e`

```dockerfile
```

-	Layers:
	-	`sha256:363b94106fd9edb740764a961a93368b69d27be631c08be6eab20e847181c90e`  
		Last Modified: Wed, 09 Sep 2026 11:11:42 GMT  
		Size: 5.3 MB (5263783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0ba4ced5825032208653d3a56b9967ab588e419178bd3a89885a28b0033cf8`  
		Last Modified: Wed, 09 Sep 2026 11:11:42 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
