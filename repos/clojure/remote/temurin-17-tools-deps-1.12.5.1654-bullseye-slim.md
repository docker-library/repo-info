## `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:4900996322e59505377ce4536e8352a1200268d4f9c9575c32b9ec2490477a60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2ba863d4307b0f56180917873c85bac9659c3150f42fcea60e8ce6d404697fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232267450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c384b31fe2e59b27fea4725732f119aac4446f219d5839a4a0ee1c8c7da2354a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:32:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:21 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:21 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e8ed6764658eb7dac68ce1f755a67e7b21d8f19522383a8782e0df27162879`  
		Last Modified: Thu, 16 Jul 2026 01:32:53 GMT  
		Size: 145.9 MB (145906318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6faba8307bee66af0194d71931e6efe94ae86ed18e91f432f82d3590a43c48`  
		Last Modified: Thu, 16 Jul 2026 01:32:51 GMT  
		Size: 56.1 MB (56100335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f626b74b8c4add11eee698ef8de54303c26509ae2619a57e93230319c78c4d1`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b86536d758fd7e45aa109c89ce8b033a077b6d5ed8929f9f856e3a94012ba502`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:27642db9464ce594b59f78ae5e21bb3b52e10986ec6b4997831d5164691588fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4be9f46ca12677d43150611075881d6b14fa14170a4bc5658b575e46b4f61ff8`

```dockerfile
```

-	Layers:
	-	`sha256:e205885f5f561071eafb140785fe700cff2b4be2c749285590ac317dd4a0ce49`  
		Last Modified: Thu, 16 Jul 2026 01:32:50 GMT  
		Size: 5.3 MB (5317849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:532e1fc145142a68773d3dd02f43da2e78c6fbad9bff6c9aa70ebe32de5a40dc`  
		Last Modified: Thu, 16 Jul 2026 01:32:49 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a00e2bbc54c5d0297399eeee2071e293c178b7eb309f921ec041e7a9bebd788a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229742088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5c0236f0aeaa9e5d0e07e023d48211101d6aad1a58dbafc207abec0b41913c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:24:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:24:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:24:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:24:41 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:24:41 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:27:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:27:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:27:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:27:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:27:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc6ed6504423ae6d5166622ffc4b39fe57187ea044899e804bfdb1d3701827c`  
		Last Modified: Thu, 16 Jul 2026 01:26:13 GMT  
		Size: 144.7 MB (144724314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45512007200ae148cad375d076b46793abdfa64cc3716b7a5d1c2f7b43bc78b5`  
		Last Modified: Thu, 16 Jul 2026 01:27:33 GMT  
		Size: 56.3 MB (56267749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c9ca284bfe3eafec661e8edeecf7dbd8f8691028201ef04699652813bb4010`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb00a5ebb264019b6ea12083f5be34772864ad18c96a22106f8605df5e9aed64`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0ea27b3ab1c440e9bfae58cba5951411e60a7681fc37a9739452875f112dc034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967c6e80e606cf4a789e145680978d470c5178ad9c7d7d20ef16e85cf87f407b`

```dockerfile
```

-	Layers:
	-	`sha256:6b44e2418354c9fb84e3e079c6676c67805381c4cddc565cb439ba838e4c9e91`  
		Last Modified: Thu, 16 Jul 2026 01:27:31 GMT  
		Size: 5.3 MB (5323581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721c696f46553ffd45138cae080860237414f02e59de1d5447fa78120edfbdf5`  
		Last Modified: Thu, 16 Jul 2026 01:27:30 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
