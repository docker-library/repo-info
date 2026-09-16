## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:69b25fc05cfd46137b35a76da39097720b5a9f49a8c3bfdc90f68f1f1e71dbfc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9895d5b2af89e18958b83aa18d857f00c387699aeaa9fdb219710b3e2b4ad93e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272494914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c11fdc963d1335f66e22572713ccf49e498b9ae9f351723a52e7aae8233147`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:34:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:34:18 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbde6f2ad9a8927466d09bf6f4224e580ab5a958c6a15084e2447fc7bf4cfa28`  
		Last Modified: Wed, 16 Sep 2026 04:34:51 GMT  
		Size: 145.8 MB (145822694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57abf625565d36697daf3348653fbb4445708c2a68279c4311f08e10bb1607fc`  
		Last Modified: Wed, 16 Sep 2026 04:34:50 GMT  
		Size: 78.2 MB (78173813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d1e6d53b27d500745b3037eec209df4d221798920b11e2226d66026647b09c`  
		Last Modified: Wed, 16 Sep 2026 04:34:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0645758d31672e01af3c1e44b673eefe7d347303229026f23f73f59a9c0a59ef`  
		Last Modified: Wed, 16 Sep 2026 04:34:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e60b8b2ec9a0195ca831d6d592ea2fdc0258b0153b7c3c5459ff38b9ac18e908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a82afd48e9e2ca91efe6a8d30b8489faee289e449ca6953a25ff6c1e59a3c4`

```dockerfile
```

-	Layers:
	-	`sha256:c1551be85441ce3c20062a0a32fec9c55b3e5fe60771e82130ed554c4173ec4d`  
		Last Modified: Wed, 16 Sep 2026 04:34:47 GMT  
		Size: 7.4 MB (7380596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:176b6be367c565cdf3f2127fe281a441f312833ebd1f2ac6111bdd8459905017`  
		Last Modified: Wed, 16 Sep 2026 04:34:47 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9867153380af54bccc2934ec4179c8e599b8be0c5e501b13fe1cba88ab926efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271206663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcff101c1fba03064b8b7d5a8f4a3a63c1bb1f559d55836bbbc4727645158319`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:34:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:34:39 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f93e2f732a1159d2ff9e2cb2d01f16e59addd29425bc5e89b29e25e65fc2a9`  
		Last Modified: Wed, 16 Sep 2026 04:35:19 GMT  
		Size: 144.6 MB (144647467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9737008971fa113f98116d61bbb308f5f412daaa3ee896089a02db1b1ae15f`  
		Last Modified: Wed, 16 Sep 2026 04:35:17 GMT  
		Size: 78.2 MB (78174505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe530cf75d0c09fd1290ef27e3eb441f2ce6c165e4788c1fe1105b8eb3b8af8`  
		Last Modified: Wed, 16 Sep 2026 04:35:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20dec648f6b915419718518fedf9346742a80915c66272889da40004ef09b23`  
		Last Modified: Wed, 16 Sep 2026 04:35:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ce602ceb903262adbbf5d13222cf853be1f8750a2eff055872940b0128093e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5c2fbb0d74353b32fc71bf30fce1a5f657c1414b635866c253df4d238541d7`

```dockerfile
```

-	Layers:
	-	`sha256:2eb3299f205292af8f70dbaa16e6c5bf747d2b2e3148bba2c711291deac5e765`  
		Last Modified: Wed, 16 Sep 2026 04:35:14 GMT  
		Size: 7.4 MB (7386359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4499e24348f8827d6002a96cb9f00f613c92030fc0c010e00e4278d6c147494e`  
		Last Modified: Wed, 16 Sep 2026 04:35:13 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:972d4e4beaa42f46939186067433ab64ac58a9c7ae78fd58c8683442af107165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (282007426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0abb65b5791d19b74f6bcb4be927e0e3507f5e74d3b86984810cdb18a75c430`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:36:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:36:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:36:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:36:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:36:07 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:45:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:45:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:45:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:45:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:45:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1af52d1f120ab866cd01f53f55536432689f0a99bbf598990aa772fac79142`  
		Last Modified: Wed, 16 Sep 2026 10:40:17 GMT  
		Size: 145.7 MB (145674262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5649db570fc1c25ac13f8c117ff4468363ffa7cdaa17cce7b4221ce7c3d3093f`  
		Last Modified: Wed, 16 Sep 2026 10:46:22 GMT  
		Size: 84.0 MB (83990356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0d3488c784073618c2159210c434adecb45c27e2a3c15b9275b736ff3dbbd4`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5140f70d240e1ebd1a55dc8915d6bba5a01335dd95623127fdd6df0046504ab2`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d8ab939c8230a14ebf4563e66819ae80067ba87b5863477bc24f261157642629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faa79ea80adfafceb219ef41eae3836776e16c1aebfc1f4c922308eecc0f9fe`

```dockerfile
```

-	Layers:
	-	`sha256:40cdea07dcc115e9f0221460bbe5ae75d0c3412f7c16b0421df04e193c6a1e19`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 7.4 MB (7385810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df62ec34fcf1209f35b1c91074aa352f0d4344530d89b51ebdb27b5e4530e520`  
		Last Modified: Wed, 16 Sep 2026 10:46:20 GMT  
		Size: 16.0 KB (15979 bytes)  
		MIME: application/vnd.in-toto+json
