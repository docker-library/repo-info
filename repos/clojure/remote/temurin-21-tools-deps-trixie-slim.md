## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:defce6f933b91b2ff6fe4443a040cd5f7ed8dbc1f47b43ad1ba44a30bf32be3b
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

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:664d19f1f20e7668dce670921dd52b60d316f47331a955d2ef6cfbf5d9e495e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256914066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49290bc511916734401a856a8aeb4664af7432d6097cb12770fd633b802a2a12`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:47:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:35 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b3b68232fe19ca7057abebe84b830f7c7d851178e5a45399230df7d001ad73`  
		Last Modified: Tue, 18 Aug 2026 20:48:16 GMT  
		Size: 158.2 MB (158166947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05571ea7fa7f4f77168b523ff5803786df09f3183414395e08b206af5126cc3`  
		Last Modified: Tue, 18 Aug 2026 20:48:15 GMT  
		Size: 69.0 MB (68965313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49da1a9f4acb8fea8f41022c87ab16f4964b6f0313e4373d003752013a54545d`  
		Last Modified: Tue, 18 Aug 2026 20:48:12 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d915069798d194fc0eda707f218b248f98b277db16ec6bbc2d2242a2cfe6f3`  
		Last Modified: Tue, 18 Aug 2026 20:48:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d1d3d42055268a728b774e4553a5f9c4f7a2dcd739d521e76ca06cc57b949284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e6a480113bd24cd32756155bbe974300156bc0e412830693621913fdce3529`

```dockerfile
```

-	Layers:
	-	`sha256:5026a9e051d4132e8a96e17866d831da3d607a968a33141e73230b716d83d331`  
		Last Modified: Tue, 18 Aug 2026 20:48:12 GMT  
		Size: 5.3 MB (5259216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:076d5038033e3577557baf81ef7fc62f26046f76d3c859b498be7063ac83d44f`  
		Last Modified: Tue, 18 Aug 2026 20:48:12 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a0431a663d9662fa3f5af61d6bc616aeafe22664db8ee058f377af80ed8eb466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255391605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa33d8be2a22e799fd3442be7eca5d3fba91a1b7aff16c54c747159d1541ffe3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:20:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:20:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:20:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:20:37 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:44 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbce2cef04a57504040320be11fee0daaa87996b420084c8dba9ff1dc5ef5fbc`  
		Last Modified: Tue, 18 Aug 2026 20:21:25 GMT  
		Size: 156.5 MB (156461246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f513e44d480737f3bafb5494cd69355cf8c3a02d51e5c19bf36b14f5d799530`  
		Last Modified: Tue, 18 Aug 2026 20:48:20 GMT  
		Size: 68.8 MB (68785707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a424cf6b6902eaab6490cd2fbe73e3fafe73d95a0d86770806963c768a694d`  
		Last Modified: Tue, 18 Aug 2026 20:48:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecb189380120243d58eb03cecfe0fc6dcfe73c9eba80000e59ee61ba158a529`  
		Last Modified: Tue, 18 Aug 2026 20:48:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ebe69957824b917982c6cc91d9e9be29465eba09cb52dca332e3fb13b47a75d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5280106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697c289e6d3fd6150df5ef9ac2dbdfa893c06f4378562002884b02b850a9bba3`

```dockerfile
```

-	Layers:
	-	`sha256:b8553cc7f78497925fa56ad147ea1cf16754f54dec6bdbed58f49288ce2198b0`  
		Last Modified: Tue, 18 Aug 2026 20:48:19 GMT  
		Size: 5.3 MB (5264977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9094e37a0b17e08d6ee9d116c5481f1944ed1a69db4ebcc6483cb501698dad3e`  
		Last Modified: Tue, 18 Aug 2026 20:48:18 GMT  
		Size: 15.1 KB (15129 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:508a1a7a9a974be73fdad9126dd57409b285631fc60c3eec6468bfd814b8730f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266321833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37725ef422c0e43f46f0a9f80189273064cf3845d39f79d1f6a608c96be97302`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:23:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:23:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:23:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:23:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:23:29 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:29:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:29:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:29:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:29:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:29:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419ee9e86461fde3e3cc88c5867f82efc4b9061d9ac6ab3139a0e84fe107ecbe`  
		Last Modified: Thu, 20 Aug 2026 01:27:19 GMT  
		Size: 158.3 MB (158343252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1682f786a6c4d1aee8e2a49fc3d41a1666e26222c37d9096c7996e988655a8b7`  
		Last Modified: Thu, 20 Aug 2026 01:29:59 GMT  
		Size: 74.4 MB (74376196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd42c2b47b25969a89e2174e5385e6bc03e7d745899bcde6c75ad7c631d0215`  
		Last Modified: Thu, 20 Aug 2026 01:29:57 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e15af87ecd1c979ada949a4902a514883d36a0fa1c15b43b00314788aa6d05`  
		Last Modified: Thu, 20 Aug 2026 01:29:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0ab21b5310f3abef8a03d0582ab3a5aae96584a772f5ff938072e92c69a37cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e0e3e6bb9507e056ce66b7a399d64c066a65b5aee0578cae266c54b8d02cba`

```dockerfile
```

-	Layers:
	-	`sha256:cf8637947f9579e558a1df99a45016fe75b3342fa27cca48c1812b9aeae19354`  
		Last Modified: Thu, 20 Aug 2026 01:29:57 GMT  
		Size: 5.3 MB (5263587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f31ee26a1b9cca255b9d7d7e0eecfecf66bd320bb82932a9cbd9f96ebba7e639`  
		Last Modified: Thu, 20 Aug 2026 01:29:57 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f80a6ec93172b88ebb3d3803d6ff4dff0ff8d653b093e2054ae6fc897a0b4128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247181205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350ab8d25ae0f364226b1f8505c614ae09e8fc4f330f6cbfbdaeb2523ba96f68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:35:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:35:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:35:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:35:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:35:58 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:37:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:37:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:37:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:37:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:37:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8d6adfa93673e55a91ecfb01c0dad6ca14967d332f10e901f1a9fb9e6f9392`  
		Last Modified: Tue, 18 Aug 2026 20:37:42 GMT  
		Size: 147.4 MB (147388358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd70b27172ce05c2d955c2494e034b1216d5805118e46f135a1bef2980a4c14`  
		Last Modified: Tue, 18 Aug 2026 20:38:08 GMT  
		Size: 69.9 MB (69945236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfe3a35b6cee69b3e53bc8774bdf56da2d004cbba0a35cef43f561c65a39118`  
		Last Modified: Tue, 18 Aug 2026 20:38:06 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4553432749f3e995b201bfd89983d849078cd7e0fa197af345958bddb19760c`  
		Last Modified: Tue, 18 Aug 2026 20:38:06 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7baa6109b288568eea799a926b2eeae25442ea417c78fc6b25a30c0968623a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6d39828438a21122bc07d5daeafe9151f94f4408695d9249992ae487bc3489`

```dockerfile
```

-	Layers:
	-	`sha256:71115a47dfe84c789fc67e35dba8e9823b2e80556db30510e6c7ebbf9d28280c`  
		Last Modified: Tue, 18 Aug 2026 20:38:07 GMT  
		Size: 5.3 MB (5255140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b120b13e562c6ea5b84d649506b30b90c06ff809bff63c3d704700c639c89576`  
		Last Modified: Tue, 18 Aug 2026 20:38:06 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json
