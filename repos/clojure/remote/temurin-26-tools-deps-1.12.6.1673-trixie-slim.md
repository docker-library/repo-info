## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:68ae8a94064a249ba1fceb473115f5937596bf288500478fb19cd32eb19d517c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c893a62a92d70e09a66afd664983a9433ce5d2a162e0b3edeca3d9d6d2565415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193399243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6533be17fa59d5af239b0dee72a64f303353a57a55ab355199d213c431de0bcc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:14:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:14:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:14:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:14:34 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f29e56128053226e126df016a2939a6029507cffa8fbfa1c26d94a276fcc0e7`  
		Last Modified: Tue, 06 Oct 2026 02:15:08 GMT  
		Size: 94.6 MB (94563506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53ed77ca159329fb8ed284279dd65f1e876e44522a944d40468bb82e4fed089`  
		Last Modified: Tue, 06 Oct 2026 02:15:08 GMT  
		Size: 69.0 MB (68991347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7fad256516e624b78d72a0e257513fb8b0d519bf54bd1c789aa00032653710`  
		Last Modified: Tue, 06 Oct 2026 02:15:05 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623bb77fd895f1058f458873c7dd4a7aa88332a516ac47b3edfc1a895bbc882`  
		Last Modified: Tue, 06 Oct 2026 02:15:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e344d5c7bd92f3e0531187675942ec3ed671c895d31a5c64725d93022a9900a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3683bb46076f74e2d6689f842592c9beb75243254189d97cf2d8ff5c9ff6651e`

```dockerfile
```

-	Layers:
	-	`sha256:b9f76c97eed195b40342ba808f1201a9b02a90252241cdc27542ff4ce9a5590a`  
		Last Modified: Tue, 06 Oct 2026 02:15:05 GMT  
		Size: 5.2 MB (5228207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:632a61b873e419819842439d50e23b4a4c21db7ed11c0ead3d48206e7c1ec37f`  
		Last Modified: Tue, 06 Oct 2026 02:15:05 GMT  
		Size: 16.0 KB (15957 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f5ab2245b5d4159c6d75531b93cfef82bd5f93028f396fc88b08ed07470d1c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192553474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b5c138cd7d0b661785bbc3c96363b49113103f63d4913544f07919719dd749`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:20:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:20:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:20:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:20:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:20:29 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aec97f5e8d92681370c274ac8024bc242c3ecc866105fdddf9f71555751b55d`  
		Last Modified: Tue, 06 Oct 2026 02:21:09 GMT  
		Size: 93.5 MB (93543627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0024be9e984a58e33abaa7512e119ae70f35f2405ac7c81828afce3236c854e8`  
		Last Modified: Tue, 06 Oct 2026 02:21:08 GMT  
		Size: 68.8 MB (68808523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69939a444d497954c6336bd185c3ef3e53c6c0f6ca8138c68f70148fa44232ea`  
		Last Modified: Tue, 06 Oct 2026 02:21:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac9dc58a42f9d4c5b5b7f770c0b16cf8108e1af71bf223c582c978e7675fe4b`  
		Last Modified: Tue, 06 Oct 2026 02:21:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6316b6867a5edf9671b09f290799fef8034f7d23a7e17f9a8d3731fca592b5a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74566a05bb0350279ce2b15355f4f52d55b6f2f69fcff12d1cb0d21e8ffd4c38`

```dockerfile
```

-	Layers:
	-	`sha256:2199e32a31284b2fe186b0de890108378e14ff13be6bf7b911fad575c9f1221d`  
		Last Modified: Tue, 06 Oct 2026 02:21:06 GMT  
		Size: 5.2 MB (5233965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23e4761e4ffb22169c5edd8d54a14dc796f2e789a5427df4169a12d019f9c74f`  
		Last Modified: Tue, 06 Oct 2026 02:21:05 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:26fc85be6ca07b222682832cb4b516c9c8f5f873cf1296fdcfcb95ff261a8987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201415515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2964173b069babe0ca998990222d0404e6a796e9c4a7f91027f7b56d12a28b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:49:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:49:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:49:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:49:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:49:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:57:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:57:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:57:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:57:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:57:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6279b0cce2d4e2d63d6ccefa1877ed2751fceb21434a0b490d4569b26752e991`  
		Last Modified: Tue, 06 Oct 2026 10:53:38 GMT  
		Size: 93.4 MB (93350868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4962f17e6a0b9083fe9829d8adba25b469f835e5c1f90306966c9215f2a87943`  
		Last Modified: Tue, 06 Oct 2026 10:57:50 GMT  
		Size: 74.4 MB (74412009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1361994e2e9da5b46ddffd67b7e15e02a5f2660aba21a88fc7d0927ff9b948`  
		Last Modified: Tue, 06 Oct 2026 10:57:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3363146dd0166bfc58e77d8fe6ba5a2883e41f3a60739bae9c962111f531c034`  
		Last Modified: Tue, 06 Oct 2026 10:57:48 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:485a540e92c2edd1f92f3fe143afb30f2586d7531fea4cfb5c57b0f434f0ea71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68febf17ef434b5a5b3696e5e79e54d0924933e4918a597ed363e478dcdac1b2`

```dockerfile
```

-	Layers:
	-	`sha256:1d87b3c7a2a69174cf250f01a696a0b959315732129c6ba0848fbd46382ce836`  
		Last Modified: Tue, 06 Oct 2026 10:57:48 GMT  
		Size: 5.2 MB (5216514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d99c2201869a4ef837ad2c53b80adc6da709d99e726dc0bbf64ad098030f5417`  
		Last Modified: Tue, 06 Oct 2026 10:57:47 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
