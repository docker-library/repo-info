## `clojure:tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:63ae5bf9375e9aa3617822037471f24c4ea870c1d6da07fc11396c4e98fb6731
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
$ docker pull clojure@sha256:bc965bdf91ef381f3d302d3e854eee834b12a81dc4ce03b4b13cf32e876519e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186318414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dc1878ed7b14fe5b4068be26937a1f25942d071b931012a993ef6a43f77b45`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:08:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:08:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:08:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10c36a05a346390c45fd3cc18ce339360546bb59e02415dd3019c6805da2d49`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699f4771c87cb52d6c26dba8db4fa4cdc4684f27a3d9a5590a4df78c1be9ca02`  
		Last Modified: Fri, 21 Aug 2026 19:09:05 GMT  
		Size: 66.7 MB (66667970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e5cfaf1164c3ef07aae26466622be8016029dfc32a19848555cd87690c3d45`  
		Last Modified: Fri, 21 Aug 2026 19:09:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad689a51575623df31d93d5097b6bb301e5e3cee0606e170762da38c42f4901a`  
		Last Modified: Fri, 21 Aug 2026 19:09:02 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c01e03a2d98f8e33aab9dfcbc33f40d12a7eafa7cbfb450420193f944498c202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191d4aabe711ae412aa366d1a45191087cb9bb8a26637d75e8fd4bb95837caa6`

```dockerfile
```

-	Layers:
	-	`sha256:315ae50d1fd448a426acbcfb23c5e05229d08ada553a93332542c6c8b8aed8c6`  
		Last Modified: Fri, 21 Aug 2026 19:09:02 GMT  
		Size: 5.1 MB (5093110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ea5f526b7ef7083531f84048967f586ce6ca1608a235b75f436369a9deb764a`  
		Last Modified: Fri, 21 Aug 2026 19:09:01 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b1ca51a45f9b0729cacaf947196f618250b6c406961d1630bec1f9e1954bf3b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196488247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664bfcda226b7bd9262181d8e273aba1508ec5960103b82b47bc22411bbaf59f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:30:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:30:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:30:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:30:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:30:05 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:38:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:38:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:38:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:38:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:38:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75110ab10d2ed791e257ccc400d7c6d0df222aece9a98ecea62272d5d67edb1d`  
		Last Modified: Thu, 20 Aug 2026 01:33:36 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a5e1c0be90a2b29e9dcae5247019005bc9cb506c36670552ad9053816ebaf3`  
		Last Modified: Thu, 20 Aug 2026 01:39:13 GMT  
		Size: 72.5 MB (72496871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50481400559dfec2f1307ddd2456cc3c099775f2461d4a9b58b8440a882502fa`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7255e421d19c8f09df0048abe64bcec7b3640035a73e56bcc86ce719c3bf3c35`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a935f6b9da9ef20662e52a5fa7848dfed870cb367cc68cc660b6ae33d61e7555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd566b7747c786961bd4459af9d1a820a5ca59ae4c9c1bbff8f615740825e601`

```dockerfile
```

-	Layers:
	-	`sha256:82319887a3a7986aa27610dbfb7974c1848a60afd7059d3285e9cc0e51ef3821`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
		Size: 5.1 MB (5075810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15f076852c70578c2e48589716acfcd54351b472ad26821a1b288185e6293e00`  
		Last Modified: Thu, 20 Aug 2026 01:39:11 GMT  
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
