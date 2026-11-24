## `clojure:temurin-27-trixie-slim`

```console
$ docker pull clojure@sha256:d56027f476a83aaa4c5e9aafb3e25dbde1831ea9eb7e4fd02dab61f216792a76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bc4680b31b936058056f242b95182edbbcbe1249c8a96968d4e01ace169e0aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192483159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e648148f51f2fcc0d83e2f5589c8d1e4aacdae3bc3b02b7d47072290632135f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:14:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:14:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:14:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:14:12 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:14:12 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7dc1b272a481307e07064d814c58fe6ca922ce58b3e74e70718b2c321bf8d8`  
		Last Modified: Tue, 24 Nov 2026 05:14:47 GMT  
		Size: 93.6 MB (93649642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77614343bfee733e595db0bc55f03645c79de8c9510dad0cc1944f6cb87dacba`  
		Last Modified: Tue, 24 Nov 2026 05:14:47 GMT  
		Size: 69.0 MB (68989795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f62843e2806764523818f86eabb189495421ed5e6343b5f5bc79227083ded7`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434da6a328d353c62f6b4dd4cbd3b15875f42f769ac3db89bf16267ddccea44f`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d821170bd593bede31cd65766123e121453eaf78c8e49222a385878717aebc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93aa499219bb4d3d20d888dd13d875f3beec0881fa64fb26d115c6842762a5d5`

```dockerfile
```

-	Layers:
	-	`sha256:3c9d894d876a09fd9008dcaaf89adecdc55d18bd2c649f7b20e5aa49589eeb3e`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 5.2 MB (5225759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c986892a6e404414eb1606b9fd65a4efa288a08733cb76d60d142ef251fc16eb`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c4df930c0910262d967dfc9b0c354f1f633af19ab28b8498ceee31ab8d0e4ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191682036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:293d926f1d7c0ae655f548777b145917b849179ca880b960f2b1837e50de6e9e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:25 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:25 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da758a61dbfd485ac32bdada42ced1b6d58d511e8a385cf0334acfe1cd1b71c`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 92.7 MB (92660447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c5380fb71ac22750c9ef0a1c0a569c38978a8372389062cd414d67da6729fc`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 68.8 MB (68806004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2064ea99f0cc58b468bf357d983fc2a896ae59faea3565ec63f2c8d7e675277c`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05c5e122f6df918ac7a3f1fc47bdfc5a6ffddd13d2404fdc2cdfe43e1a33f73`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03a7314e197f1041b45d02f16a00dda907bc0855745f260521633bfb6dd09299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00e09278d5ec4b33e111f8c1357b795a6d73a0607e741e1fc7144f62e23c428`

```dockerfile
```

-	Layers:
	-	`sha256:be898e01c81147ad6ac40365e4c9c35f2219d1a5ef14e40ecf952c00f5b70547`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 5.2 MB (5231479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f865bba71e11e3de34260814c212cf8d5bb892bd60e1a1df56a4ac87218a1e4`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 16.1 KB (16076 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:79d1919ec3247b8021171ad2100ecf3a15a22faefe5b846396f8bc4b1a947e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200014181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5f6ee7c34740435ccf66615379a0ad9e78506ffda6b08c09d2d27b0a0f8b6c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 20:06:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 20:06:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 20:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 20:06:18 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 20:06:18 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 20:13:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 20:13:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 20:13:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 20:13:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 20:13:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313234a8502e59652a776296191b1755855d823324e0df0c18a0106e7dc23485`  
		Last Modified: Fri, 20 Nov 2026 20:10:12 GMT  
		Size: 91.9 MB (91933337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adf56b6d20edb67241be09c1ba6ca6d7805fc311136ebbc59af80b0d5dd0654`  
		Last Modified: Fri, 20 Nov 2026 20:13:59 GMT  
		Size: 74.4 MB (74411648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c118429728945903b67c6434db4bb26ddafa50691a0ba7d80aa09ba67b0b2f5d`  
		Last Modified: Fri, 20 Nov 2026 20:13:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1dc06b59330b61c7fba42f44f54b54d58b2427582320ff4588315796a7510b`  
		Last Modified: Fri, 20 Nov 2026 20:13:57 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:edf1b253ac73f35161777129e058fb05238f866f1103f20ffa762b73889bdcbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2586e296690fbbf8d1f359b88b4efbddb03be5f81909f6d655cbbf9206cb42`

```dockerfile
```

-	Layers:
	-	`sha256:18b7a3eec32ea9936b3f106dca2e53dac8c6196db6216fbace113d01c81b913f`  
		Last Modified: Fri, 20 Nov 2026 20:13:58 GMT  
		Size: 5.2 MB (5212159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05a257675e6f94e4b073fdce70bc4c6707ebc998a1b65a2e1a8c2ea41f1b56bb`  
		Last Modified: Fri, 20 Nov 2026 20:13:57 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
