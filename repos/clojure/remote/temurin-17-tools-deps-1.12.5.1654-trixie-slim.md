## `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:3ec7b730ce5866ff8bd7ed5572eaed5bca4dfa9efeb447bfdd6d3facf09274da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9c12fafc2622fa730bf154863c08fc91d73c7686b72684d450c121c1b2af7e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244659495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eea05f171040b3d0a8a8c950960b691865c55ca2681719680538110aa9d5a0f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:19:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:19:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:19:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:19:24 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:19:24 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:19:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:19:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cfc2b654a4c53ab19ae61b50105c53a4c5ca917268957aa480b80cb83338bc`  
		Last Modified: Tue, 14 Jul 2026 02:20:00 GMT  
		Size: 145.9 MB (145906288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc46928df3a3dded4d1f3c5ae30874572f3b10fd5994220f8c698451a7bcf6c`  
		Last Modified: Tue, 14 Jul 2026 02:19:58 GMT  
		Size: 69.0 MB (68971263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8b054412f0c6e70a75a248f6223bc15e76f736f1fd80d2abf518abecdffbe7`  
		Last Modified: Tue, 14 Jul 2026 02:19:56 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e7804dce5f8f7ad45821e5136041bf3fcdc53b7d7c98658aad0cca1d770d4a`  
		Last Modified: Tue, 14 Jul 2026 02:19:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:64fddc69c180014bda530edd1b3851bb9914a1075633923952493427180a4d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5273298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b04eb4b0523e21ff7b31a98ff954052fd3e4fbd87423e34465e28f46e1607884`

```dockerfile
```

-	Layers:
	-	`sha256:b81b67895d9655e33cbfa46a171ca4a44f7894860b84a29a4f74c64b8419a983`  
		Last Modified: Tue, 14 Jul 2026 02:19:56 GMT  
		Size: 5.3 MB (5257332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:626f721f683cd0e8700d10f86e931bfb85040ffe5edc46c07e8b2e6bae7d4b1a`  
		Last Modified: Tue, 14 Jul 2026 02:19:55 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4a45f69996d56bbed2b2252ed25a6619843fb3585d6953480102c108c972070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243647166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a556ec443cb6ea0cd342d3ab94b902711874cd74487c2f35b1e7de3ffbb4a6da`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:26:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:26:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:26:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:26:38 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:26:38 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:26:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:26:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5ed6a8dba43fdde519ab46e33dc6bc6429ca0da7dec351c0087591ace44eaa`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9767a6f5dbb4ff134b7549e18728f2b4ba0a39a2cc1e7f56eeca8895616580aa`  
		Last Modified: Tue, 14 Jul 2026 02:27:17 GMT  
		Size: 68.8 MB (68778095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a2bac4d60cb869d3db6be95831348862cfec59c0263dd0eaf69ec443f73ab8`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e23f3c5f49d794e58bd61c65d92e2b8188ee1e453a1e980d99d6158e26924d`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef8b87a7d2c35e2c3a5dfce74d6bd9d73240273e77f34a76f99fb0420099ea46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ebd6aeb31b9bf89a3a33a16eb058981d586fb8f4dd711b0922e0a28d8566883`

```dockerfile
```

-	Layers:
	-	`sha256:a7e5c8bd80c2fbd6eedabd8bb58c89a010fb8f9f6de2d03c9702d0e3822d4614`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 5.3 MB (5263093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ddd1cb967fc304db87b73cf54930d93f94e77382fd1cdcee95ed5adb15d807e`  
		Last Modified: Tue, 14 Jul 2026 02:27:14 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:15eb2ff7b2f1b476525f42cc1836e93e94f26c788b21df29f3ca0725f60fba6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253741385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:441160f9c285663b6341cdaa5bc9bf59aa926448e819ec1ed4b0b1aa53efad33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:30:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:30:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:30:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:30:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:30:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:30:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:30:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:30:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:30:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:30:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8720ca311664529620a125fd330bc746519e60c196880b637985787701431dd6`  
		Last Modified: Tue, 14 Jul 2026 08:31:22 GMT  
		Size: 145.8 MB (145766113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fa51a5dce8f157a104bdf8ff5a68773d1a27637b0b8305e7af2bbd93ebc240`  
		Last Modified: Tue, 14 Jul 2026 08:31:21 GMT  
		Size: 74.4 MB (74372755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a33dc115761fc17b659f22d4e6fabaeaed5a0c1f7c2659c180fe67002f09e`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a92df85293be9608adab79dc206521b7e9f7e6f74a1149adcb671cc32dca0`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4477dcef916bf17da45d2b5b1284375060ce9a06c8bd34d1863637c5df5ef13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5277717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a22beb7552fcf0becc90844dc638fb4990ee27ebc3cf251ee110820b1dd0c88`

```dockerfile
```

-	Layers:
	-	`sha256:ee8f0e89e426ee80797acae3520ae9ee13db348547e50ae44e5f59bd25ae6ab1`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 5.3 MB (5261703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51f9c73e6a3291bea5ada99c59fdac4910be0354234f22ec0a603d2607916766`  
		Last Modified: Tue, 14 Jul 2026 08:31:17 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:22df52173986d18ba18baaee1cda0f509abf07b65b59a79681c94a62a0610ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235701190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d5281dff623c455661b0870f48dadab2b009b49d409f08c289bed9e4a46f0a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:28:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:33 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:28:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:30:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:30:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:30:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:30:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:30:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935fa8188e1638b6c2aefff3f233ec4e32a40a42b3b1547563d79e1a61784473`  
		Last Modified: Tue, 14 Jul 2026 04:30:04 GMT  
		Size: 135.9 MB (135910419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe804e65d2c599ba039537a42dec2690e9f5938822dd836e98bd79492a72d28`  
		Last Modified: Tue, 14 Jul 2026 04:31:03 GMT  
		Size: 69.9 MB (69943099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1784a8357cae91b8fb8a603edced2c5bf8506a237f116346c741e7db72b58624`  
		Last Modified: Tue, 14 Jul 2026 04:31:01 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49dcd397e09f351b8e84986ad2873f56da2c11cbea5c9aa33ad13a73202bee80`  
		Last Modified: Tue, 14 Jul 2026 04:31:01 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:88c72fd179bfe969b641400a2730d1da0da16bd50d972cc8ef8f7e87129ca88b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1a39fb2dd901bc1649d339fae9c33eb572dd9c14ee2f0c72e34d9aafd7417f`

```dockerfile
```

-	Layers:
	-	`sha256:958624debcc073ee7bf0fab0a4706cb2ed8357ab141f9dad655a3a431a4721cd`  
		Last Modified: Tue, 14 Jul 2026 04:31:02 GMT  
		Size: 5.3 MB (5253256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad21a96ce39439fdf43a9b546a8394803ad38304a402774c542b2ffad4efc088`  
		Last Modified: Tue, 14 Jul 2026 04:31:01 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json
