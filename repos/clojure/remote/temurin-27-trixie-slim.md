## `clojure:temurin-27-trixie-slim`

```console
$ docker pull clojure@sha256:b08cf29a158f1e585d3d32fc43629b3509429bc53d344d6bb37b4d40e953bb8f
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
$ docker pull clojure@sha256:afd011be11a2f1fdf2818d3eede1712d721c15fdf5f1170061e26bb28c912756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192496977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7983d251c38d67de9cb316b3b46bae3061b3749d967b1582ca1b264fe759cc3b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:12:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:12:29 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:12:29 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:12:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:12:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:12:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:12:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:12:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f8d7efd0d2d921b1df0871459a4607edbf05e6344b7b592e4afec283b3efbd`  
		Last Modified: Fri, 20 Nov 2026 18:13:10 GMT  
		Size: 93.6 MB (93649643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f6213dc732c41d257fea0937ec4647a38f4d622d76ad93c3a8d828b8502afc`  
		Last Modified: Fri, 20 Nov 2026 18:13:10 GMT  
		Size: 69.0 MB (68989653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed43124f5e36d0f0a2a4d72aefc70665d05018895498c423682bbde070a712b`  
		Last Modified: Fri, 20 Nov 2026 18:13:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97dd723946ff55796fc32a4abce87d23b6405c9a0815df62355a5e20b09a52a0`  
		Last Modified: Fri, 20 Nov 2026 18:13:06 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eac86573d957ee2e8caa4e7d8d1520c1fe7052d3a7e5bf65768b6bc0c7fa8a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269cc5c7003098bf0ac3f5bca7e4cdb147871c2b2693323ed99f83b904b07392`

```dockerfile
```

-	Layers:
	-	`sha256:e40b8ee6c07412e703fcc4c4be17672488b8f7b3f576d3ddf3c3e89dab710f56`  
		Last Modified: Fri, 20 Nov 2026 18:13:07 GMT  
		Size: 5.2 MB (5225713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c0d50166168e419427cae79e2870b1dee700925f159577a887b9c7c80ff76f9`  
		Last Modified: Fri, 20 Nov 2026 18:13:06 GMT  
		Size: 16.0 KB (15959 bytes)  
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
