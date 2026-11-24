## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:6cd16a4d08aa832b8947ce2ab6201576237683f03a8bc56277f761be95cbd3f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm-slim` - linux; amd64

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

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5869afeb8e8a7c36beeb2cab3a226eb7c0e8fb8b9cddd02de0badf9d2f0bbd3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249321991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb842cacecd739976a60d0c9385e41c5a6cb332f283e67986b28dcffb452fd2b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1795392000'
# Tue, 24 Nov 2026 12:34:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:34:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:34:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:34:01 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 12:34:01 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:42:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 12:42:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 12:42:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 12:42:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 12:42:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6a60ee161e1a240cbcc7442cf284ad6d493b1dd2b14668095ddc44fbce029cc`  
		Last Modified: Tue, 24 Nov 2026 03:39:18 GMT  
		Size: 32.1 MB (32093504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd8de769a6a4eb93b27a13f595a1f72ca43fe131ca489aae9dfa494f45e5aae`  
		Last Modified: Tue, 24 Nov 2026 12:37:33 GMT  
		Size: 144.9 MB (144892598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672984451020f32507f013124bb0b30cd44abfdda313881a023678172c296fde`  
		Last Modified: Tue, 24 Nov 2026 12:43:25 GMT  
		Size: 72.3 MB (72334353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0562d67bee2083e318f63f6ddfdc05197f6e0d76fafd57d4e041df27619865e`  
		Last Modified: Tue, 24 Nov 2026 12:43:20 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538f637a09ffa805e8fd9eb1cb4b3ae4d8c7f9ba27e9e90c3dbaedb1b58e03e1`  
		Last Modified: Tue, 24 Nov 2026 12:43:21 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:16286d3ee042e89daf52789decc7e6e1674539c720aaee01605acddfa3f50115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61813aa4badf4e0ee6ed454de2186283b99b7fb7fb250ec2a4aa206d353e8e14`

```dockerfile
```

-	Layers:
	-	`sha256:a368b8db59014a1c60f1c08bf791b2e1c7c35b0d835425c517613b30aef6ddf5`  
		Last Modified: Tue, 24 Nov 2026 12:43:21 GMT  
		Size: 5.1 MB (5122027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25c368955fea3cfa200f13789ab3c7ecc3d75d9da2da1209fcfddb4c15d4389e`  
		Last Modified: Tue, 24 Nov 2026 12:43:20 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
