## `clojure:temurin-25-trixie-slim`

```console
$ docker pull clojure@sha256:e7d34dac1b3d386bb8e8a94fc9a451160d8a6b05866a2774315fb448662e4e5f
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

### `clojure:temurin-25-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7ffcb47ee5a568d9dd1f7c7940e826dcefe7c10ca2af7fcd5d107f94cd71afab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191362055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f09f3307a5e2f4e052037a590f4736ea0ec990f7b189f1a2083bff158a27068b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:19:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:19:55 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eebd9393d1b8d9ed02a0fc8a2a3d2e454701c1f354a767baa65d8fcb1bddc5a`  
		Last Modified: Fri, 21 Aug 2026 19:21:28 GMT  
		Size: 92.6 MB (92615096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e645370869551d80136ce70237e26424be5c7f23bc05d1ed0c1bab0924f87fc`  
		Last Modified: Fri, 21 Aug 2026 19:22:13 GMT  
		Size: 69.0 MB (68965150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cde6ee56e2c94a1173837fccfd83157a02d95dadb3c4ddc77343b8affe0b6e01`  
		Last Modified: Fri, 21 Aug 2026 19:22:11 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36a4ff43e1572be0062ea7286b4355a4dfdecc8fdd4b7954c4bda1fe2d47748`  
		Last Modified: Fri, 21 Aug 2026 19:22:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef3a773128caae1e55927ccfcf9c9d6bfa4c007e2d3ed0ba4e119cdc2fa18442
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0769d83f901eecdb7286cef4bae0faf189927c954a85044adcdf2d48e883f977`

```dockerfile
```

-	Layers:
	-	`sha256:2921cb909f36336a1bf8060fe1b5d52f75f91bdfe2d87efbb2eefca2290c3794`  
		Last Modified: Fri, 21 Aug 2026 19:22:11 GMT  
		Size: 5.2 MB (5225446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91857c5a7fe108ab73aa0600b2674dc52ebc29dd8772c7dd171a0084af7d25b5`  
		Last Modified: Fri, 21 Aug 2026 19:22:10 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9c3da90689792ade50cf91d89612eac4943ad72a3a12606fe8a8566db8229f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190462530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fadcc2f081ce2bcf7de3ee0e4051025244d563c909bfa9a81fa8a92b576511`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:09:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:26 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:44 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f241db16c017bc577a2716a6cfa572312827dd328d2dec29a6384f15f27f65`  
		Last Modified: Fri, 21 Aug 2026 19:10:07 GMT  
		Size: 91.5 MB (91532189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6701bba9a8be787a85f1c63bfa0d531810b3b713b096ba14f856c6650753feb3`  
		Last Modified: Fri, 21 Aug 2026 19:10:06 GMT  
		Size: 68.8 MB (68785693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c869c864b19e8453c2215507c7aee91c157bb765686c0bf76fe1381a8e672a4c`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50712e758ba048269cd7e159561d51e2fd46162ac6446c450810be771c3eb4de`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:94b37f36846b7d5dc81df24fc678dbabe1f526799e2b18e853b74064443456ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0d8ff27109861081c55d3fd2309a4b15700750f2857af338683d082f999a09`

```dockerfile
```

-	Layers:
	-	`sha256:6f38c6e66c07014eca2e3933a07c882e983695205c2fb8c1b7296f57f802fbc5`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 5.2 MB (5231228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc4d0997b915a142e65c53e240a1852ac5e28f2c0761c7ba6f21004a85f5c66`  
		Last Modified: Fri, 21 Aug 2026 19:10:03 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:37c54a17c6e6d2aaab32560792c441e53fd00cd842b06a5461858d3449fe5425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199892983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44fb6c943c78b72f9554868054c8280368748e95b233e2e121e8e219bd5fb117`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:33:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:33:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:33:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:33:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:33:49 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:41:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:41:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:41:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:41:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:41:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd981b3bf21487bf5f3e5bedf2f580fec2bd343892811a38e927e4ab9b6a7455`  
		Last Modified: Thu, 20 Aug 2026 01:37:53 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e973057639951a56aad54fd9f0210d373e71a74228f92c9932aef069134e414`  
		Last Modified: Thu, 20 Aug 2026 01:42:20 GMT  
		Size: 74.4 MB (74376584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9518ddcce753bbee19158fa71ea01dcfe59fb24bca3005a81d72573daab73eac`  
		Last Modified: Thu, 20 Aug 2026 01:42:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e4f5e42a8c14436135e662b45fffba841a6a7518865c9ba08b830453649f8d`  
		Last Modified: Thu, 20 Aug 2026 01:42:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8da2790b1b57df9f1d6a3b3a76763c72982181789ad4eb011dbe71a0bc9f56ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83913609be3bf1f479e6284a0677146a8b783e809c3d91b2d22fb13ee4632890`

```dockerfile
```

-	Layers:
	-	`sha256:b5f85906e443b7adff73a989f0d0f01376717784c65ad600e198bdc57cace359`  
		Last Modified: Thu, 20 Aug 2026 01:42:18 GMT  
		Size: 5.2 MB (5213141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7701efae004d6f2ab6034ba79fef5fa49aaaa7b422d715f41e6daa64c4b32270`  
		Last Modified: Thu, 20 Aug 2026 01:42:17 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:121d4e01945934911fefc5300f0f3dfb975a8edc6e67bc94b6119a937f53453e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188214964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3216e917a31ba52d99bf29ca88aed314c7466d6f997eb0b8ddddd63aed98f61d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:11:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:11:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:11:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:11:40 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:11:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:53 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46705dfe435c8f8c0b271e602e00735acb24ab97701f5ffc898cb464d2a38ce`  
		Last Modified: Fri, 21 Aug 2026 19:13:13 GMT  
		Size: 88.4 MB (88421933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac12834c4942c35918c6b9773a33b8c86f706b980e1bbf7ce187bdab1ba5d1f`  
		Last Modified: Fri, 21 Aug 2026 19:13:16 GMT  
		Size: 69.9 MB (69945419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4af371dffa3db9a2ee93fa2c3fe75b0ac39f73b18369436861b72325515867a`  
		Last Modified: Fri, 21 Aug 2026 19:13:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2547bd22f31e335421bdf3492a6a420b78589a569f79900f731bce3886be3d4`  
		Last Modified: Fri, 21 Aug 2026 19:13:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0b150eb339a229db737cbff34ec101833ff79bc12cf66856d23aa44ac4302e57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d54b23505c78c80a876bef465cef76d7abfa400e8ae825bda0ded2abc06a32d`

```dockerfile
```

-	Layers:
	-	`sha256:5054ed3d89c1554fa4e0922b45d9d1e45872df54384c80ad0a3d8d4837956445`  
		Last Modified: Fri, 21 Aug 2026 19:13:14 GMT  
		Size: 5.2 MB (5205932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64dee0fc1a5570536e024a87168fb5807eb03fd709feaa90a2a3e31b569d309e`  
		Last Modified: Fri, 21 Aug 2026 19:13:14 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
