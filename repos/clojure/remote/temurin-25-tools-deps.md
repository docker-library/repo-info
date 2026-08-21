## `clojure:temurin-25-tools-deps`

```console
$ docker pull clojure@sha256:6a07d18fdc6aabd94654b83f8c17d59e3625f59c1b4f3f6404bf3215f54497a6
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

### `clojure:temurin-25-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:a02679f34eb091b15c5ae3e1d37ee5f1b328eb5d2d89fa4015933b15ce3bb0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219276601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693fd3874c7943d234457204275f11187335cf3bb391590a7e6a8202b2069c42`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:20:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:20:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:20:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:20:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:20:17 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:20:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:20:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:20:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:20:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:20:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40f35c40dbc909346d6fb3fe04c7bcfcfcc6751eda2c2ca42404725c7781fa8`  
		Last Modified: Fri, 21 Aug 2026 19:20:55 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b258b8c118516dd2d566ec872c1c715bd3a904f3f774215e3a4ab0448ef2ad3`  
		Last Modified: Fri, 21 Aug 2026 19:20:55 GMT  
		Size: 78.2 MB (78163388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6a47d318322f02de3a93ce24b4a3ca9ce1054fc19aaf99adf9022e722a3f10`  
		Last Modified: Fri, 21 Aug 2026 19:20:51 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00b3d630f6ff397f60df87426b866ae1aa5f52ae5786272e5b51c3ec596771d0`  
		Last Modified: Fri, 21 Aug 2026 19:20:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:749d43ce82d78af585b3811a30f448260275d4488bdaf25c3a33699ed8a066fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ecd62a4ea79ddb6842a07af2362a254f514ed3a1539c7a283a29653f59ce17`

```dockerfile
```

-	Layers:
	-	`sha256:b498a720efc031ce1ccc06860b853e2d4d83d9b1163e7b4b11f2a300c51e3423`  
		Last Modified: Fri, 21 Aug 2026 19:20:52 GMT  
		Size: 7.4 MB (7350767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dff46dd148d9a1b10ca1b7fafb372f9609b225b1670fae0ba863b3aa82915eef`  
		Last Modified: Fri, 21 Aug 2026 19:20:51 GMT  
		Size: 17.9 KB (17923 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8591e5df30f62184ac2c6d9c6490a5c1138367b955a87e4037360555e5cabcb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218062852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8e87be1a559945b02bc1ef220bf06c152311aae4435b28eec213219dd14529`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:08:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:08:37 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:08:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912c2d9d585cfb10264485f378d1bf7bafef175923d53d224b3596f93d1afb4c`  
		Last Modified: Fri, 21 Aug 2026 19:09:00 GMT  
		Size: 91.5 MB (91532187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03e97dbb452eb1aff44e042961128e2d826a0dcd83329ba226eb9d2439e8028`  
		Last Modified: Fri, 21 Aug 2026 19:09:00 GMT  
		Size: 78.1 MB (78146245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307ebcb8b0c18c6f2d4b9d983887b30620b05361f24b85617e068ad9bbfca316`  
		Last Modified: Fri, 21 Aug 2026 19:08:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f482aa26d15fce4cd2e0b6cc2f272723b2c65ab3370da07d8e544121814c4421`  
		Last Modified: Fri, 21 Aug 2026 19:08:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:25f04f33d67d7a6dbb663f2a5dd591a9d910524f66aaf8218a0c837704e8d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7374714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c122ad94e156fde0946759a467c7aedaa9bbfca5676c6e8c04ebe4df97f6519b`

```dockerfile
```

-	Layers:
	-	`sha256:830e738b265d2c1350f28c037d4b56f6c714f44860cec9a7712770f3189951f5`  
		Last Modified: Fri, 21 Aug 2026 19:08:57 GMT  
		Size: 7.4 MB (7356599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc78a0e5ba5078713aa7d1816b8b2ad5bbad31467f4500c8a4faebdbd9ef865`  
		Last Modified: Fri, 21 Aug 2026 19:08:57 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:8443aee7ca51d58dff20e5bb7de432d6b54d6718c511d60a6208b2321492bdbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228235484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b37b10b5b40ba04edd3db0a390a0e1fce6680372baf36c07c711ddbf641334f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:46:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:46:36 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:38:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:38:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:38:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:38:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:38:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657805ed81c8838b19ae6cc208be44286fcb1fb1507004590b5867ffb623de4f`  
		Last Modified: Thu, 20 Aug 2026 00:50:38 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361a89e2c3e9e1effc1a33bdb069073cf7b764ebb28b9834caa02c8e40d8ba4f`  
		Last Modified: Thu, 20 Aug 2026 01:39:14 GMT  
		Size: 84.0 MB (83978954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aeac012f85fd43c54375726804f38737e61cf0a7bf271db0a631b790ebc5e87`  
		Last Modified: Thu, 20 Aug 2026 01:39:12 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9fcfcee8a26f8239decb27e1f56ce81d4fcc815f42569bc3738c4e11b12d47d`  
		Last Modified: Thu, 20 Aug 2026 01:39:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:161e0b03dcc9ffada5354e7d25b12e914d36119a6ec985af3651ac2d8e6aa334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7357340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b17906289731ca0b0df38b7a08a52cc542a923dc2d3fdea0f1f33648efae48`

```dockerfile
```

-	Layers:
	-	`sha256:00edddd4156dc3def6a357ae1a1115caae4c5f6e8da06bf8738286bb37f3d232`  
		Last Modified: Thu, 20 Aug 2026 01:39:12 GMT  
		Size: 7.3 MB (7339331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e490216eceaa0821e438a38298f3bf86c4bbba06cb12d97a5d60e03a55461cd0`  
		Last Modified: Thu, 20 Aug 2026 01:39:12 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:f9d3b535243d0ee16847031847c19e4899582e4c3c6e711b0ac878bd36592051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212514659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7e792368441da2e8d542e2bc6d53aa0cfc3e7cfb6ec47bef2921f6fc0ca2c`
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
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25c221f4c7edbb89e565552871fb14ab7a518d9c601424eecd608881860a286`  
		Last Modified: Tue, 04 Aug 2026 03:04:12 GMT  
		Size: 76.9 MB (76935952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:fb84fc442117f78175d6ad3c1329ba42df5b93d0c990cdc4c56cf9310471af77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7338417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181381876d20d723d44d1433eaa2e4012173d78b27da7c951e0fb3c1fcd2dd62`

```dockerfile
```

-	Layers:
	-	`sha256:91122bd04fed31a28dccbe6ac1d4689279205ad41b50864298fac5701878d151`  
		Last Modified: Tue, 04 Aug 2026 03:04:11 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ce8f334aac2e6eb3c2f35c9606bd554112380c92122972229c20ac34fa4344f`  
		Last Modified: Tue, 04 Aug 2026 03:04:10 GMT  
		Size: 17.0 KB (16972 bytes)  
		MIME: application/vnd.in-toto+json
