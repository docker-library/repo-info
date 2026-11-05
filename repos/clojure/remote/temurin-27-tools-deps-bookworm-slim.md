## `clojure:temurin-27-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:96259ed3db613f668dd2a31ce0ca67af5babe754d1d29159073649c75ecfd1f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:869f347f016742fac7281c75ba7aacbfcd8b3d60de27a054cfb265e59368b2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188379443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929057522cdae4a88c13ff65c719781c739b8c8bd220e17e82dce3fb61557eb5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:11:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:12:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:12:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dab88705e02a31fab07de576a75a1f3e275d66088b8ba22d68425996113a7a6`  
		Last Modified: Thu, 05 Nov 2026 08:12:21 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd1e9ae313e3f25131ba8f697abbe0fc4497c6d5971e8d453ca9546dc711df7`  
		Last Modified: Thu, 05 Nov 2026 08:12:20 GMT  
		Size: 66.5 MB (66507932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df22c0d8d19510b251954067b0d7cf61f56f1f9eaf3ebbe9c0f16944f6ec427a`  
		Last Modified: Thu, 05 Nov 2026 08:12:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c16ea2bff77d38e56173e7d2616241976b266a54b5759ba627cd56f9d68f92`  
		Last Modified: Thu, 05 Nov 2026 08:12:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:67a6215ac7a8df17ab2df7073fe5b3af718adeec2490a2515626c4352d18e05b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f64ffed8e4be47e18c95694407706064d4f2507082e3012acbbda5d66c528f0`

```dockerfile
```

-	Layers:
	-	`sha256:6f8d862fc73fd4efc8cd0972fbd25422884bf6951ccdf1c38f695083d02f4182`  
		Last Modified: Thu, 05 Nov 2026 08:12:17 GMT  
		Size: 5.1 MB (5081737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c140fb2dc99a228276eea63e29320fed27febbdad72a0de2aa1c8c007cfe0df1`  
		Last Modified: Thu, 05 Nov 2026 08:12:17 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5be1c7c8df7b2b9d3f9aca7178893290062aa96b817244962a0997242537d407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187278707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e0b174777fcccf8e1f5788a59852683799e9758c04fef3f03708aaea87ffa2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:21:24 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:21:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:21:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9b3c3d08acd7c9b97986bdb7e0b2720dd44844c07272cd9633a4d9d18730b9`  
		Last Modified: Thu, 05 Nov 2026 08:21:59 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27797a4eb36f7e07267f3d4b0b5744fe135d793d4be60dba4619cb278467b5a6`  
		Last Modified: Thu, 05 Nov 2026 08:21:59 GMT  
		Size: 66.5 MB (66500186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d612a0d17625b27ce904fba023606f79e9d8f57041f4cf33d7684a6811dedaa7`  
		Last Modified: Thu, 05 Nov 2026 08:21:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca5bde0c7277ede4d31b2777b2ddd751c700e9302728530bf0ebc7054738de3`  
		Last Modified: Thu, 05 Nov 2026 08:21:55 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8d4761f03ac5e9f6e55e85233f9c5ee7043f4f078f46dc77e9d74c732f6f6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa41c21579633a209d48c6055b08b9d1b424133e96939b3af8b98370f9b8162`

```dockerfile
```

-	Layers:
	-	`sha256:10682330eb857cffa63cac5c9d092d2fedfedf6026314f4eda074dcae0b2cb1c`  
		Last Modified: Thu, 05 Nov 2026 08:21:56 GMT  
		Size: 5.1 MB (5087495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49241654a5f4e8122ce0c8ffc94eb6164fbf74623825d0fc3cbc73f0cfec1c06`  
		Last Modified: Thu, 05 Nov 2026 08:21:56 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cae3edbc5d194aeb7309b034873a450ce63d7b1c739f53251f3bf7c6690e7a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196684250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da19330ceb5d46359ff389b1517561adbae5d7627a96803aaa2454398f1e8c2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:13:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:13:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:13:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:13:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:13:55 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:25:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:25:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:25:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:25:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:25:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c08afc4ceb0f76e0b0bd43babfba987bfe8fc7500f1cb86595dd3092ee06eb`  
		Last Modified: Thu, 05 Nov 2026 16:18:52 GMT  
		Size: 92.3 MB (92255796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd28b61fbb56b5023f3b74a1a3b7961de3ebae3c5f028f6806b891eca9474a6`  
		Last Modified: Thu, 05 Nov 2026 16:26:09 GMT  
		Size: 72.3 MB (72333847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ade1522950ea65d320662760f840544da78bdac5d7913ce8587eab17cf3cde`  
		Last Modified: Thu, 05 Nov 2026 16:26:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da01d0d42d419972bc9c57796416d0ac294b40568db66759706fb0dba58565ab`  
		Last Modified: Thu, 05 Nov 2026 16:26:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9880b1e28918c6af7bd3fb1fd1432bade7a714ad86fa71930e4b8b02c432986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5086862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb64cd8840d5cd4e14125aa03ad43a32197b0ab371026b55a70dcf57ad7548e4`

```dockerfile
```

-	Layers:
	-	`sha256:def725a001cd183a90f99d2d7851f6c58b4e6c42d5cdc4056038d4a477592fa6`  
		Last Modified: Thu, 05 Nov 2026 16:26:07 GMT  
		Size: 5.1 MB (5070831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e77c561d755133d3956fdab9c2e03e2850ad1fbcb2b0b407188c21c67ef9a65a`  
		Last Modified: Thu, 05 Nov 2026 16:26:07 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
