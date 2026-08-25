## `clojure:tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:480ebb583789f937ef62e652446836d23a70e2f7a8a005822a80ca5a1a00ef73
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

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dacbc57d4479f94598eb3c82b5a98d96f85ee71cb36cc5927112e85df20f61c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187530663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88585cbe061e2c8e4281a65d3bdf683928c342cfe549517656d0c6c036f10972`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:21:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:21:08 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:23 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de26c2f7d0e9112c16bc344623d136832a92b95d8565b840e652506ec31ea64`  
		Last Modified: Fri, 21 Aug 2026 19:21:45 GMT  
		Size: 92.6 MB (92615080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e147215d2226b7854fddae2c0398f87dd9fee9e72eebf80897ca0d0cc8ec8c`  
		Last Modified: Fri, 21 Aug 2026 19:21:44 GMT  
		Size: 66.7 MB (66681951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7251d73b96e4bc95590ccd4a3b23cb1e40d7dbc51e1b03e664e55aeecb4119`  
		Last Modified: Fri, 21 Aug 2026 19:21:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39fca90766307f15361fab80ec8d6a1fa6299c95d703df60aa9c3be86a05a037`  
		Last Modified: Fri, 21 Aug 2026 19:21:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:710048298334d016b00919e2601f8ebf63ea032cccdb31e8db3abfbafa3f6273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcf3271c9f96f787ba3a6ad036b3afae1d6f553d08be64ce4212f3c34127eae`

```dockerfile
```

-	Layers:
	-	`sha256:8761ee3cc4b7e7b2b8a78c365ebfa689c611f21019c2d1145b49e6bb7105987c`  
		Last Modified: Fri, 21 Aug 2026 19:21:42 GMT  
		Size: 5.1 MB (5087328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ceb2d35de4e5ae8c778d02d57a9739ec97514c95d9b4fb7ad6ac93bb0e11e0f`  
		Last Modified: Fri, 21 Aug 2026 19:21:41 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:19dd5dad40f29d13906c7c8335539e93f97a51a822abc2cfe0c28b6c976f46b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186319546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0545174cfb7b878f87ff173d355324c3821aa14a54880ce147ef113f5996e7ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:35:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:35:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:35:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:35:50 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:35:50 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:36:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:36:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:36:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:36:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:36:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5171d53b832f0b94f6971cacfe5cb3b667cfe5ee5aabc140a2ea4c8a660cb2`  
		Last Modified: Tue, 25 Aug 2026 01:36:27 GMT  
		Size: 91.5 MB (91532219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3110b76604244dd7f850704a474a9f5f497c9acfe31c6548aa0d995756e06b4`  
		Last Modified: Tue, 25 Aug 2026 01:36:27 GMT  
		Size: 66.7 MB (66668994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba28e8ef9a2917407a664252dbf28dd9408ad402ce197795959079a8dc078c4`  
		Last Modified: Tue, 25 Aug 2026 01:36:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb127672343cfe3fc923c08ff5f2b3b67fb993de7ac71fec8f421923d355e8e`  
		Last Modified: Tue, 25 Aug 2026 01:36:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9d6d2644659246092adf42b7db98176cc2335f998050357162da27bf1fdaa089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f7bc6a4e38afd615956ac6b3a8cdf69b381c1a4d65a09aa8d4eea050dda718`

```dockerfile
```

-	Layers:
	-	`sha256:79c296aabbb755a105f6e82eb82638018958803024a3d0f5c3c941a2962ba6d0`  
		Last Modified: Tue, 25 Aug 2026 01:36:24 GMT  
		Size: 5.1 MB (5093110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20e48d571316823cffec184e226bc5123d8f1924d767d61519eb6eb892c779a0`  
		Last Modified: Tue, 25 Aug 2026 01:36:24 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7c32dccf552a080198371253276ced8384b0174a792e2c9c7a3bb0027d17071d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195829936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ef6f255ddd5f6e01d780d6ee72456c82629a8ea738bc56af217eba4854b4c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 22:57:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:57:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:57:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:57:44 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 22:57:45 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:06:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 23:06:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 23:06:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:06:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:06:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ba0d3212b0631e97ff58df51fc151af8c234245c205c70012c14f63c48eb7e`  
		Last Modified: Fri, 21 Aug 2026 23:01:16 GMT  
		Size: 91.3 MB (91255830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e670343b9d1aa578eed59f17cb9ea661c34ac10b4cbe1001107ee7466ba94e`  
		Last Modified: Fri, 21 Aug 2026 23:06:38 GMT  
		Size: 72.5 MB (72496740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20b6e8a59feb40352a71eca82c18fb3ca4a65d91af1ad59546f91d7318ca5f1`  
		Last Modified: Fri, 21 Aug 2026 23:06:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bd295e0d00717e489bd7c58858b1399003a5ad89e49f73150eb9c462c4ef37`  
		Last Modified: Fri, 21 Aug 2026 23:06:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e8cc9a2132f6e94b5e10f0a197ed5b1bbac2c7e25c60327c3a5ee10a6d21f1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04b3ea933092aa644e433b2723ef2b551409b829804780fa5f889efdfff7a2c`

```dockerfile
```

-	Layers:
	-	`sha256:bf4115a364e159ee7ba77f7b44b06e4ac5349f34d7a8ca974a32256074255f5b`  
		Last Modified: Fri, 21 Aug 2026 23:06:36 GMT  
		Size: 5.1 MB (5075810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:478e6f28408f979a26097def5005e1e63bd216ed4adcb0adede18259b4d420ad`  
		Last Modified: Fri, 21 Aug 2026 23:06:36 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:fefef883c319bcea834d97a3254b42a2ed47b30ee16486d7c85c0da62d5628e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180765774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fedca5a45c79cc8f6438b22fe0e2949d727dc0b108c60f1c8d1b33189afe579d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae887b3377496cf8347ebe3ea7043d707b2d02a42da560c3468fe435168a5e57`  
		Last Modified: Tue, 04 Aug 2026 03:04:09 GMT  
		Size: 65.5 MB (65456095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:be7274fc478dd4d67b63063c5f3ba8a43eca546310032d40ddda305dc55d515b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5073733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135423de29d4e454056f9acafa30066c4d3242f18daa5799bef8a96cb7d132c0`

```dockerfile
```

-	Layers:
	-	`sha256:cc0454890b114b4c8c45035c569655d77c9dffef532a4c2e36df05e9cc7f565f`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 5.1 MB (5058008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed2efaca382e53971b541e49e9fdc3948b80f2394d6bc751cd1395a7512f527`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 15.7 KB (15725 bytes)  
		MIME: application/vnd.in-toto+json
