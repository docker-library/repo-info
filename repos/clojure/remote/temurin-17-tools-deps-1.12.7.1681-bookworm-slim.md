## `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim`

```console
$ docker pull clojure@sha256:7b0e12e47ce2a32edc2b9087441cce7e5f8d1f244e7866dc56921ef0b09be8a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:097a49351f6c5d1cee98808e994799c17507015aa40bfbe6c7fd1c07ed663925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240874680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f434446212ec4ab167b414e56c0d279f412b7666dda97a656f58c28f0360a11`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 05:10:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:10:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:10:30 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:10:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:10:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:10:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:10:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:10:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898b17e55b098f490cd3b6c5576937e31afd81ebd6caee3622e6e80038989a2a`  
		Last Modified: Tue, 24 Nov 2026 05:11:07 GMT  
		Size: 146.1 MB (146114278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf31f3ce84f11983044a992ae1747f58f09249534b0a613b6f2b85c222bdae3`  
		Last Modified: Tue, 24 Nov 2026 05:11:06 GMT  
		Size: 66.5 MB (66510903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05f931be7df81387fc191c6b2c8d002cb7bfd5be135d045740002a428624692`  
		Last Modified: Tue, 24 Nov 2026 05:11:02 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04cd91f12e4b55df9b1208b2d498052e032525ccf89d471612c4e7f0bdc9230c`  
		Last Modified: Tue, 24 Nov 2026 05:11:02 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e5ddb336c3bc2ce294f4106a539966575fba109f9093d7fd1e3e50918e824ddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa12e3b7a0df6b750cff24250d7bd0d141e13854ad1fdc5a01207f10340f27e`

```dockerfile
```

-	Layers:
	-	`sha256:99ae51a4027d02d7c7afeeccf5686e6a013155882f176c998ea8f77a099ee0d2`  
		Last Modified: Tue, 24 Nov 2026 05:11:03 GMT  
		Size: 5.1 MB (5118115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fa09027ddba0d44446bd15b99105ebc9f2724fbe2d1d9d2328427d453763bdd`  
		Last Modified: Tue, 24 Nov 2026 05:11:02 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc3baaab610402b7dde612e058cf6e7f92905ae56a5659ce51365520f2be14e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239599951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d51d7617eb8eb200c031fbbdf4ba47bd0f250238078ccbc5a8d6f29b5967c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:41 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:06:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8de81aa0a466fb5ce1feab882a993ad841d3dd1b0642d72e9009c5ac4f7d3c7`  
		Last Modified: Thu, 19 Nov 2026 22:07:17 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7948760ece31c394873646dbf579de23e0bc25c28f31d76d56aed723293a104`  
		Last Modified: Thu, 19 Nov 2026 22:07:16 GMT  
		Size: 66.5 MB (66496884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948b04cb1c46770e685bda7090e66d834b3a8aed0a9468575f2e25892d05740b`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d0158da500095f00538493067d453126c1fb427790dfb13f690a0652970a0a`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a0cba0995ee44901db04fd9411e965d00776fd79d795b71daccd2f6c1204cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e79af8ff4aa5ee5231c2f355f14ff13817fa549931fb6645c8ae5c7386c08ac`

```dockerfile
```

-	Layers:
	-	`sha256:9c3ac34fdf5d29e2ebd5a1a4ee6839c0a61c08b5850b9d7b6a4484adc61bc902`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 5.1 MB (5123868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45ee109c9c2f100d198f95c4e085951f2672482e823b9a188bce1fbbb8d95b55`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:01f9686514d7209f23f9f38b319f9c4ff23f461e2c5b7117c55a86657fe6463b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249321829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6534243e929e9022ea034edd62f7bc703a59923b46c0171c495a7700ce8821e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:14:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:14:28 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:14:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:25:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:25:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:25:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:25:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:25:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a224f32b4613abcec12974810a9ee61a493bd8337f9f6c0b67261fd488c02044`  
		Last Modified: Fri, 20 Nov 2026 19:17:56 GMT  
		Size: 144.9 MB (144892615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f13a36da401b7d66265d673cb0205cbddd8225d91b434e1b2361b50ab9df898`  
		Last Modified: Fri, 20 Nov 2026 19:26:04 GMT  
		Size: 72.3 MB (72334104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66988042742008ca31b008a323fb47b83373ce7d9dac8ae7a3afbfa723cabf8`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55d114385827834046fbd467bbe11942a2f8d297e3a32db3122dc6ab0881675`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:91b3b00ffb5a227f5c99cf842ec8e3da8cf88acf67d677ad75e9fbc47e4add4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26c0f739b64ccec791215f4625027b8058eb2e5ac9d5327341f9c8d225e889f`

```dockerfile
```

-	Layers:
	-	`sha256:d19ad7f9329ecd94287071d167e52911ec0c9e1b53e11fefcb9119b497cb912f`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 5.1 MB (5122027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89058ee1f00a362dae18e0288f8e40587c6b0cef07e469e35c0554ac0358d475`  
		Last Modified: Fri, 20 Nov 2026 19:26:02 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
