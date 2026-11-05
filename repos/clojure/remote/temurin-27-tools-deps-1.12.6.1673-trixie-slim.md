## `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:5f7677834008aa6b4e98d09eb5b47510d42343c8fe907ca6671431a411a35c8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9a40a62f60de2e13bf00351d0a3315a2689a57560aaac1cd52b61f5c066b328c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192469093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:834527f56cc54b03a0ddb35b5727aadeeb2c5b3dcf777e48762a0cb6f5501864`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:12:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:12:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:12:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:12:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:12:03 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:12:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:12:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb98ec0cd1275e559f694c6b1331ef35e271b2bd43935a540309117dc63fc56`  
		Last Modified: Thu, 05 Nov 2026 08:12:36 GMT  
		Size: 93.6 MB (93622530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1886f2452eec9af6bcca991b0ed4b28ed06f9b9a5e938bf777b13fb89bcbb6`  
		Last Modified: Thu, 05 Nov 2026 08:12:36 GMT  
		Size: 69.0 MB (68989388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e17de5ffbd09bb395ec011279fcbb0ec0efcf13bf6fdc01025dbd69bf1a270`  
		Last Modified: Thu, 05 Nov 2026 08:12:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1dd467a453d2e650f3c9f8107f0ab939bc414b17c49228d4673db4f60eb70e`  
		Last Modified: Thu, 05 Nov 2026 08:12:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0131a139fbdd964432f4d0f2c1485d4009c2cd1a4b6ccc1af71ee79c4edb0ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce679c74e41d8ddb1860b1d7fff63b0e5183f479bca0c8d1694a48c0d280a2a`

```dockerfile
```

-	Layers:
	-	`sha256:d992267b683e025f39301897adc10f83a3448f92f55f4101cb0ea29b534a267a`  
		Last Modified: Thu, 05 Nov 2026 08:12:34 GMT  
		Size: 5.2 MB (5225689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b89752ffb3635c88780a84f09ef89714e376de0519330633cdd101390d6c300`  
		Last Modified: Thu, 05 Nov 2026 08:12:34 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cf167ba775bfa4c09fe947ffbb1f95497bc945cb4244291297a9a02fc990f3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191653411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43508672080f69499b65a57b4c7a68fe79b7e318b0bbc08e4d2e4ba6b4f4752`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:21:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:21:37 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca058d19dabe67efa84e77f754d7394c03b71b18cba7c282f887a96c7d95050`  
		Last Modified: Thu, 05 Nov 2026 08:22:17 GMT  
		Size: 92.6 MB (92633133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22ba7ac5fa9bb137b2691e5975d9f296be0c278e8c8f3eecbc20f029aa7ba8b`  
		Last Modified: Thu, 05 Nov 2026 08:22:17 GMT  
		Size: 68.8 MB (68805198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7988da85cfdfbec57c2735149f45abc8028f068783057af3e436f11419e720a4`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b02b22e0fc414c2500b851786aae67c821b107dfce716b91f9aa7eaef339308`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1dd280ea0ce13da6a087e46f1c9e9b284235c3e0303896034ef2bb6d79fe6b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58a4cd261c4dfda23f7fa9786a5e0e3ec63baebe95f4ac86ed8961c626ccd4a2`

```dockerfile
```

-	Layers:
	-	`sha256:cfe3b6c1728b072a2812467a67cb51b5c80be54dbead4d8e17d79085ff946ed4`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 5.2 MB (5231447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5af030587abfb786f297388486011ef3425a68d5fc5daa807aca7512ce165b6b`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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
