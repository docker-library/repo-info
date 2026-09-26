## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:ee5a9f6ab322684f8dce7af6eceadb175f387626a7ba5e7db413f3f3d4ae3b27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2e63780974f5acd76512c4369f200cef50fc16ac375d714e3c2cf3355a0f086f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187139282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a476adcb3c74d3f3b201cadbd7e8da5ada2fd99d929148b68cd5919b4f8e07f3`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:18:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:34 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:18:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b112fe13efa9e574e7f28e88528e69ca67c5d7c93d31b49f6126523c88b27ba5`  
		Last Modified: Fri, 25 Sep 2026 23:19:18 GMT  
		Size: 55.2 MB (55192247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4623e1bba55de7350484eb3bf9e2f35ecb3a9ab178a644d0bbae86986bbce43f`  
		Last Modified: Fri, 25 Sep 2026 23:19:18 GMT  
		Size: 82.6 MB (82566692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9ddcd0fc2f966066332c18cd03c7a34efbb17ee29493f40942567e5063d784`  
		Last Modified: Fri, 25 Sep 2026 23:19:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7b01e3ea60ba88657d4b8b862dbc892b06256fd7702f99196745a14d58add49c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a1878cbcff2c95254372f27d972b53b8524c32d268f9cda18eddc6948ac78d`

```dockerfile
```

-	Layers:
	-	`sha256:4ac75bb4f29c6f2cd5af4c8e6ca828def6dac6b2cda19c6c4554e8d1fa1cf276`  
		Last Modified: Fri, 25 Sep 2026 23:19:16 GMT  
		Size: 7.6 MB (7599174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8172d93bfa825468d624d48ed6077d9f7631b14f2d20a2df14c01a7d0e8470be`  
		Last Modified: Fri, 25 Sep 2026 23:19:16 GMT  
		Size: 14.3 KB (14323 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1a95432275ccf26cbac0738c39992d37e91aedb29920838b10137e374a171ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186393221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608084cc46662845fd39cbf69bf94a35a312096454d4062c81e4dc7277597bec`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:16:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:16:24 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:16:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:16:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:16:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd564ed10587a52ea4fba49307e8825e0246e0e219ea4ba261eec81c8e17dcef`  
		Last Modified: Fri, 25 Sep 2026 23:17:04 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bc306c123b314e895a7b0574e732da8bca1ffca0e30b29e4abb0254b2a02dc`  
		Last Modified: Fri, 25 Sep 2026 23:17:05 GMT  
		Size: 82.4 MB (82389467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d5fbdd521f38f8acc8c4c9476fe27ce93c20d647e6be0635dca5f957b4501f`  
		Last Modified: Fri, 25 Sep 2026 23:17:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:385067703dbdc780ba17d73c3ef7578eec9c489fef173f168afbe8bfaf30da87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7620709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2398b25d59a845e83612e0dcd1ec58216a1bf90d742da2adbc1fec897133a679`

```dockerfile
```

-	Layers:
	-	`sha256:517d84f0c21316788c4b1c364c885fb975795def889d26ef81597ddd8ca522a9`  
		Last Modified: Fri, 25 Sep 2026 23:17:02 GMT  
		Size: 7.6 MB (7606267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a16dc2dca89fb1addba1ecc9a2f93049cd527ad4293eb0e50f753f909c0982e8`  
		Last Modified: Fri, 25 Sep 2026 23:17:01 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca62e765f9f05f11377ff259049e6f5d87094f145609b19b749c01f97031f404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193857048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad4ddcb70a273d6b8de28571f86443e70f1b6cb214d19f69d37bf27167a8aab`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:36:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:36:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:36:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:36:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:36:26 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:37:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:37:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:37:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16397d6271746c75a23fa0c80a86eae58972de00cfc39d90778a45c2126f26b`  
		Last Modified: Sat, 19 Sep 2026 07:37:56 GMT  
		Size: 52.7 MB (52670664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a51984ce9f1529fd13f1905833ef37fa582aa04a3a7f011ff11333e692e91c`  
		Last Modified: Sat, 19 Sep 2026 07:37:57 GMT  
		Size: 88.0 MB (87990664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c2edf557ba854a885967bcf14d4ad52ce5c21bcc19fa10a896acf00a798e9b`  
		Last Modified: Sat, 19 Sep 2026 07:37:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f6f87c6fce3883142e18acb95cecd0c5edefd5c77fae3a2c57900806447e493c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e3c0833854dc69d594ea16a64814305136bf3acbaf3f55331e29b486747209`

```dockerfile
```

-	Layers:
	-	`sha256:76b29369f70b695d921c8eb62a5f3a7d9daf1f2cf0b1e2b0212ed47ebc964e9c`  
		Last Modified: Sat, 19 Sep 2026 07:37:54 GMT  
		Size: 7.6 MB (7604188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9059c9a2ddc9c56b5fd2fdef91de771bb5c114238567a76d76c241604c9506c9`  
		Last Modified: Sat, 19 Sep 2026 07:37:53 GMT  
		Size: 14.4 KB (14369 bytes)  
		MIME: application/vnd.in-toto+json
