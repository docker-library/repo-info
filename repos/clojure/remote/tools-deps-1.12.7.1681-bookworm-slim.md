## `clojure:tools-deps-1.12.7.1681-bookworm-slim`

```console
$ docker pull clojure@sha256:1309ca9e4926fa9a6a2f700b307fd8459a2829e3871e6cd6fc159c59b5f491f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f3c386c7bcb0c0188acf8443ca7bb78120a3b6f2d884391f16eddfb27537fecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187374523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f4b19e9d3d76422cdd2ee5497e9b492dc1bfd1ce971a2f73acc4341a465cbc5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:50:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:40 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:50:40 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:50:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:50:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:50:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:50:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:50:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef295d751457361a62bd84667d190caa977da557feeb28ed8db781720eb9898`  
		Last Modified: Fri, 20 Nov 2026 17:51:20 GMT  
		Size: 92.6 MB (92613971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0446d718fe241e65ba777457e58873302d04caa53d938478bee05b6a259ea230`  
		Last Modified: Fri, 20 Nov 2026 17:51:19 GMT  
		Size: 66.5 MB (66511023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3501bb6af41cad7d21928b86fea90237184c1958f400830f4167cb0b7930b55`  
		Last Modified: Fri, 20 Nov 2026 17:51:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7066b5f23cb5536f2f6f43f4905adb53d6c64a0017e85c1578d80d5cb0045b2b`  
		Last Modified: Fri, 20 Nov 2026 17:51:15 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6f147deee7ceace20d86e10275c33d576900e05458f31157af1e3242da9c6116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75077b2ff0475f65db8e94378bf6444ccfff2a000f32a901605cff3117321c9`

```dockerfile
```

-	Layers:
	-	`sha256:e031f274f5e3df020f55d9fbf636b9c89f1a89361737e6354be903ff67e158e1`  
		Last Modified: Fri, 20 Nov 2026 17:51:15 GMT  
		Size: 5.1 MB (5086207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c907b4a16519a1f350b075b138ea31caa356bbfedf13c93845d4b92187b6af60`  
		Last Modified: Fri, 20 Nov 2026 17:51:15 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4891662ca0a6d9411249ac4d49d48d19679854a3936f9a00d2efbcc9b55171fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186196373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0983bf53e1dc75c4d4a7d57fbd620d76ccff075f4fbee03d128b9979f93ddbf5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:46:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:46:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:46:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:46:21 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:46:21 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:46:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:46:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:46:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:46:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:46:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30bbdeda3f2ecd938c47321ef68a1a961384fc5dfad85ac7ef85533d12390c7`  
		Last Modified: Fri, 20 Nov 2026 17:46:56 GMT  
		Size: 91.6 MB (91554030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78d9900a8eabde2f354e3d1f42f291bbec6020022df0aafa8492b0bdb9ad852`  
		Last Modified: Fri, 20 Nov 2026 17:46:56 GMT  
		Size: 66.5 MB (66496440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c296cf18ab135899f4d83c00ecff1116037ad999b9f38147318ea28668bab574`  
		Last Modified: Fri, 20 Nov 2026 17:46:53 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4eed15176975158fc55ea0625c5b87b8c4f8691177ba7b2521099db39b379b`  
		Last Modified: Fri, 20 Nov 2026 17:46:53 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b84a2dfaf4c83b16205804a610880a223e25c4b7a112d865f42a6a06cd55292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b84c00290179f6a1e8b2e090682ff0a175de9d8b5fbeb8da53415c545b3040`

```dockerfile
```

-	Layers:
	-	`sha256:7164d4e149eddb1c3133e51e6f74858093bd7f79c666b12148226b286c3fdaf2`  
		Last Modified: Fri, 20 Nov 2026 17:46:53 GMT  
		Size: 5.1 MB (5091989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b901d89ae36484cc32e256d934b962ec223c3be5045abd8728fec85a622744c`  
		Last Modified: Fri, 20 Nov 2026 17:46:53 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ef2756747deee1fcb09ab114d56030d41d08c85034b9064ca8b980868bc5e7d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194548726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8430bc440eb8254e2eb56127b65064aeddf325ee48bc3003b15167c59e01e349`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:46:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:46:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:46:52 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:46:52 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:54:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:54:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:54:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:54:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:54:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f672a32a5a7d2c45be508745f49ef21073e964225973cf17ea017ff8c3732852`  
		Last Modified: Fri, 20 Nov 2026 19:50:48 GMT  
		Size: 90.1 MB (90119618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0459e117a8db431e63856abfcfe8972eb6ef4386ca1bee1b26d2f98fc9bf2c4`  
		Last Modified: Fri, 20 Nov 2026 19:54:38 GMT  
		Size: 72.3 MB (72334001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bce7b69fee3da38fc75bf0e4b976461e55f505ef5cbf1cae987a3ac4b074d4`  
		Last Modified: Fri, 20 Nov 2026 19:54:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029e8d27c1f0cc4dbfa31dc0736c163b5108f1c07191e35737cc6af330c7590c`  
		Last Modified: Fri, 20 Nov 2026 19:54:35 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.7.1681-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2af3ba0f27eb8bb769afe9985cfe6210e6f1e5385f2816c5f16a2d58026ab39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4225b8e80583b5fcdfbe2770e2d6fa1bde7666c11c5d64d058a2d5c65962652`

```dockerfile
```

-	Layers:
	-	`sha256:613a22f0e3492cbcfec3285daa6bdfae6bdf2d2274bc25d892e72b1d466fc053`  
		Last Modified: Fri, 20 Nov 2026 19:54:36 GMT  
		Size: 5.1 MB (5072828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:406570b2b70833d829640afc72765e92e1bc730855f4a35d132316d1f6f4cfa5`  
		Last Modified: Fri, 20 Nov 2026 19:54:36 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
