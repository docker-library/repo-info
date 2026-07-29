## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:91cb716c0b097b93c9fd02d4b4fcdb5e8045c52fcd549ce87d7c252b6df99aba
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

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f29dc14340046814a68cc43d19c0836a9c22ed9535cee52db138ff9da5736746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256913508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61686e48d2139cbea49035f4518db0a71dded280de8a055b3005e0bda708ec41`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:57:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:06 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa291124259aafa8d64a3ee747ee2253e9afe36efc6c85b0cfe891ec007705c5`  
		Last Modified: Wed, 29 Jul 2026 17:57:46 GMT  
		Size: 158.2 MB (158166942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651f311e49481ec04fc707bc4d1a8e6cf431d4846f92befa0d53ee3d18d60dd5`  
		Last Modified: Wed, 29 Jul 2026 17:57:45 GMT  
		Size: 69.0 MB (68964615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfacc3921702bee9ce3dbc546b4497f8d80dfd59ceed3c6d71ffbb4ca2bb82a`  
		Last Modified: Wed, 29 Jul 2026 17:57:42 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a5f91640f6993588e0a821413d0d246b7110675499ca63809af8bab625c1d4`  
		Last Modified: Wed, 29 Jul 2026 17:57:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8307886ae0dc588e608b0a58d521a919dc1732313329b1eb83c9cbc560f52987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5275150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aefb01ffba3bb1d5313b43898ef0892a9bd74201d5a4ddfd9cbd143d3345af3`

```dockerfile
```

-	Layers:
	-	`sha256:93d13f8f14fbd61fc90432a13dfad062f48beb8b75a3f53f26202ff8f39d20da`  
		Last Modified: Wed, 29 Jul 2026 17:57:42 GMT  
		Size: 5.3 MB (5259184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:531ddd6a39cb064d0a8cb66e5653d22da4bf5f4a9a9f1528df5ce4b8bcf67477`  
		Last Modified: Wed, 29 Jul 2026 17:57:42 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6edac8f4a155cbbd858fb40f2baec31f6145d41a8bb83d07510c728c21d62391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255395225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3cbae603dc2f248f54e5a587a449c5480ce916480eb00682a70be34237b43a2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:05:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:41 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4efa010c596706ac9d1c39a705960f8dfb37245728aa69f6f419ffc247b5a7a`  
		Last Modified: Wed, 29 Jul 2026 18:06:22 GMT  
		Size: 156.5 MB (156461278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaad6d2ed2f4c48505a687f59a64cd40f88cc8e3f02ac99978819bac975b9f7a`  
		Last Modified: Wed, 29 Jul 2026 18:06:20 GMT  
		Size: 68.8 MB (68789200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14b12392375607d183160d7c3b5a8995a2acb7801c167e5e2ee905b7228ce9a`  
		Last Modified: Wed, 29 Jul 2026 18:06:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea8c3bfb9d30b130211a1a6e27d20f1da308eec01e0267df795cc0da38e9308`  
		Last Modified: Wed, 29 Jul 2026 18:06:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff3ded125292a7c51b3c4991d83f5066e372c47410b227ef0359f037a3286c73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0379dc289c6ba0902b2e0eb4d656aec7f4c6b40d3fc06daece6123cfbb5c2c78`

```dockerfile
```

-	Layers:
	-	`sha256:d0709f9462f6f6b0881b8410cb50f3564036ab1e259859896d1991491d746eee`  
		Last Modified: Wed, 29 Jul 2026 18:06:18 GMT  
		Size: 5.3 MB (5264945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d69ba9de2f7e5969ca87145385d7cf98cc1417a0a65849f5f440dac960a715e`  
		Last Modified: Wed, 29 Jul 2026 18:06:17 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:72cf1285e2f10b39b382e31e8bfce8554657da86040659389e15eebc78f24f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266329014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c368ea3247ade3b1efec62cddd29800fa2d10e772903d3377986c32846c95ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:10:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:10:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:10:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:10:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:10:08 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:10:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:10:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:10:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:10:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:10:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a937e048a952d8b3fee109791df88022bae8fed6c7b6a6548bfab158cf96a6dd`  
		Last Modified: Wed, 29 Jul 2026 18:11:37 GMT  
		Size: 158.3 MB (158343201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920e6a6fa2f3c3cb9881d8bf21dd09de4b6d9b2308cb65b2061056b16b305c89`  
		Last Modified: Wed, 29 Jul 2026 18:11:35 GMT  
		Size: 74.4 MB (74383289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c1eecffc2a1d97ddd87a14182df9ff8e47e57769d8915f7b57e4fc23a26060`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d2bc6fd4f84c0bae2566032c938619682db6a608563df62d0aa277de96264d`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36ec40bc228e43b23a386b3682d54ea027473b0f2672a475fa9b9ccb3ba9456f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ab2273ada5ab15b5c4c35ff65ff32cbc1b41dc781487268da42f16a165847f`

```dockerfile
```

-	Layers:
	-	`sha256:e5e8ec2cda9e5854c6123dfe04484ff7502a6d53790443e62b1ce7606a0d1fd2`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 5.3 MB (5263555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1b1afd84fa9a4a1e2d759cb6444ebef3d49e85f306056f8a63f53e9fb052f2`  
		Last Modified: Wed, 29 Jul 2026 18:11:32 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:63c70b20093d2cc5f6b095be2992b9a9ed7771001bd51d65db72db569bd4d81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247185510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6d3a762345364db2c1eb8c25eaf29f9ce81111b80a219a04e04c4e20af6e56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:22:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:22:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:22:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:22:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:22:19 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:22:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:22:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:22:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:22:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:22:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f37849e609a0504e63cd85da0e8466f6e70719e61cf7777f7c886fc45d573f5`  
		Last Modified: Wed, 29 Jul 2026 18:23:15 GMT  
		Size: 147.4 MB (147388354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9628db9fa84a703c8dc2ebb5bafc92a7de5bf342f7d32ec4468015d15fe9128`  
		Last Modified: Wed, 29 Jul 2026 18:23:14 GMT  
		Size: 69.9 MB (69949481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c952c05824c1025849ad140f199414c37bdfe4900675d1200a98cc1809526076`  
		Last Modified: Wed, 29 Jul 2026 18:23:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781e95be03bcfd2c5e0a37c4a951c89f4cba3ce3cbca85fec5570d8649c6b475`  
		Last Modified: Wed, 29 Jul 2026 18:23:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d41cfe9c7a437512775d7c486bf09a741111788a1306229173298580f8bf0d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0cf2250bffb8bec455392d38e9b2de644716cd17a9f77d5432acfa86966d727`

```dockerfile
```

-	Layers:
	-	`sha256:9005512f47f8d72c66eec624dc48c0577a97b5253d3d7891d2c9a3bfe4f2d337`  
		Last Modified: Wed, 29 Jul 2026 18:23:13 GMT  
		Size: 5.3 MB (5255108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27ca46a76f06c021d07e8fd384b6ac6b61db7dc3fbc0ff32b248943e5fff1d4`  
		Last Modified: Wed, 29 Jul 2026 18:23:12 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json
