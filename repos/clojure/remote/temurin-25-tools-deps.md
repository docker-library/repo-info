## `clojure:temurin-25-tools-deps`

```console
$ docker pull clojure@sha256:267669379b9ae9b726918e4d9ed39a831be553efc18e28097426d5ac8e193fe0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:433dc9e77d99a782ac6bef3d69ad4cbc59e05720d112777cd407433e21a39b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219293351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be213cea509336512256a615892579307aa5d6070b31012caf2ed4355515bfc1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:17:22 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:17:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:17:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b62e775f2ca30c73e60b79111e57546cf3cca7f92efcf2c4c621786716246d1`  
		Last Modified: Sat, 19 Sep 2026 01:18:00 GMT  
		Size: 92.6 MB (92615105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17e3d8b0d42bdd299da47cab02f00b04ad293ead57419513bdfe1868917f657`  
		Last Modified: Sat, 19 Sep 2026 01:18:00 GMT  
		Size: 78.2 MB (78173765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3879942fb9bde6c7d20ad3f311b5c6c80b054e7403a5d27dfcdc174de8da134e`  
		Last Modified: Sat, 19 Sep 2026 01:17:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572af63e5d1da2c1bb37a571d9a9e27a5f23f12a88dbaac66e8410b782870079`  
		Last Modified: Sat, 19 Sep 2026 01:17:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:16892e7787732a84d5f569eff7ccbb833752e1586465cb14965c0fd14fc8b401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dea55c1891652e24541d016e7f247b3ac70205f17108752d274697df72fa93a`

```dockerfile
```

-	Layers:
	-	`sha256:15c1f929330c57f8ee970c56f95237b1f4adbe4397234aff8a1010a2f5912441`  
		Last Modified: Sat, 19 Sep 2026 01:17:57 GMT  
		Size: 7.4 MB (7350028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568436acf277d08f57affdc7ee2929f6fc3b582bec6aef9572d29c89a8f05c6d`  
		Last Modified: Sat, 19 Sep 2026 01:17:56 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e5a434d71db8995cb0e10dfa4b62e35e8aa80d45e7358ff06afaea5368a3ddf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218097842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea05ba7d7b64652a8fdeaf219c4933de26f9b5b0774af42d9a1e92feca2a95f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:24:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:24:35 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:24:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:24:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:49 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c295e3a25cd5401c680c0afb9992461234900d1b72c9e40553f439f7bd637f`  
		Last Modified: Sat, 19 Sep 2026 01:25:11 GMT  
		Size: 91.5 MB (91532240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734c41840dc7192caf624384edaef65751de9e63bf839790debf93153e6da9f8`  
		Last Modified: Sat, 19 Sep 2026 01:25:11 GMT  
		Size: 78.2 MB (78174651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e982ba41d225482fddec272bf5655de3579187d287345dbe6c626385d4baf3c4`  
		Last Modified: Sat, 19 Sep 2026 01:25:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f9da91de69f947f296817257a56b51817ecc644e4292621f24959a0f5968d48`  
		Last Modified: Sat, 19 Sep 2026 01:25:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:94acd263ac1cda145542fa39b3681af75c91635f7f76598a733ae29dcc3eb598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53bb8b7c481168037f2546a70eab8baef0fd66f3f40ae4bae8747d7ddc0128e`

```dockerfile
```

-	Layers:
	-	`sha256:85d02c82d2e5e9a8fb19e34f0743c11833a546e62d6bbf5eaabeed0924607b64`  
		Last Modified: Sat, 19 Sep 2026 01:25:08 GMT  
		Size: 7.4 MB (7355860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dc6b1bd4a25ef147dcddcca7fec0d3d803233e835fe052b2235f29fd14afce7`  
		Last Modified: Sat, 19 Sep 2026 01:25:08 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e198781eeeafc6800045bf4f1d16e033bde9b945181e704937b22e756a01083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227583423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732f55cece29b890dbea593361d30c3c339c5d480bc6f67e084cb387d77bd584`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:55 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3773e458eb79072928ad9cf963ff5e5431e28ee9d9937b28b7e31b8272cf8e1`  
		Last Modified: Fri, 04 Sep 2026 00:04:38 GMT  
		Size: 91.3 MB (91255825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c742bce4507df143404817b0a921613db4d395802f505b90b406d69b2e1502de`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 84.0 MB (83984795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb71c5ef1fa9106135e1d9670c8069ef6a2eff46170520974311a80a3a39343`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bb0942b218e1e0e998a09d4a691081e231f6ba131232447ba382c4df172c07`  
		Last Modified: Fri, 04 Sep 2026 00:28:07 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:60bef21d600750c752164325004c4d1ab0836e76fc63d27c0ff734d875ae8838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7357340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c426b04c577436d0484e9b08ea1c38f979ba68b7cebcb4b5229b593cab97fe7e`

```dockerfile
```

-	Layers:
	-	`sha256:24f39128f75a5f68d6861f949fc7834d48afccc1cfb859a4e6c18a82ac6711c1`  
		Last Modified: Wed, 16 Sep 2026 10:57:41 GMT  
		Size: 7.3 MB (7339331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:210a84f4c16abfdc1c530d670d450e986617c153fdc764158904ab3515188595`  
		Last Modified: Wed, 16 Sep 2026 10:57:40 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
