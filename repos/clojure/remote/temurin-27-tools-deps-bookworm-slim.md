## `clojure:temurin-27-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:062f021779e07efab4920b4ec028c7469f48b2ac47805c744f390c8357414485
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
$ docker pull clojure@sha256:5fbdd89f4248cb3fc1858912971bbdca2ab86e8e6b61583e88e6a9432c54e828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196683301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84dfc4bab2284646da2791cd13184003d084ee46a7366c77f7e1a85a320a3f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:38:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:38:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:38:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:38:13 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:48:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:48:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:48:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:48:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:48:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c08194d597ec2460af8b3a444f8995725d81ca5ced0756b4971b257c0a242e`  
		Last Modified: Wed, 28 Oct 2026 10:42:32 GMT  
		Size: 92.3 MB (92255813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0492406cba4b40ba5dea63a1842ff177b7dae4dc588a55873d947c90f1c27956`  
		Last Modified: Wed, 28 Oct 2026 10:48:43 GMT  
		Size: 72.3 MB (72333600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de066341d1a098eae961019abd4a55d49a48bc940d569d68b88e3c065499d58`  
		Last Modified: Wed, 28 Oct 2026 10:48:41 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b0e2fb10915efd41369725303298f9a0772d65e14481b6e369416be40bbafa`  
		Last Modified: Wed, 28 Oct 2026 10:48:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e16865834bd3189f68ff72b84c7c9c396a9cfbbc43f54551744ece369da375d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5086790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4203db9b528f20f3f4baff7dca5ddfa13464d19d379579409908f68a4036222f`

```dockerfile
```

-	Layers:
	-	`sha256:3d2a924a300ca958df473d249fd044d2460e5e3992d2f41672f6ac971b3b7d63`  
		Last Modified: Wed, 28 Oct 2026 10:48:41 GMT  
		Size: 5.1 MB (5070759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca17f49bb0f0c846819446d7da21f8b9bde446f059deb9a0d0777acd4d9883bf`  
		Last Modified: Wed, 28 Oct 2026 10:48:40 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
