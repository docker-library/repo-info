## `clojure:lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:b02a09bc8be02a808352515f5a2c68eb68c0b9aa96707874f55764dcbff16fba
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

### `clojure:lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:83285b7d0d6259f3bb3cbbb9d483cc14eb3d04cde389f7daec4ef178c46f6e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165294379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaae4b3127e6af11001e2ed1c375db158bebc40360fd62ec88a376903e603c36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:53:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:49 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ea6dff45000857b36382f262753e83da50b3a48e72baa87025db13ac8eda79`  
		Last Modified: Tue, 04 Aug 2026 02:55:08 GMT  
		Size: 92.6 MB (92574572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a1df81679d191bc45927ad3adeb996c46099f1ef014a3783a7f40528811f44`  
		Last Modified: Tue, 04 Aug 2026 02:55:07 GMT  
		Size: 18.9 MB (18891623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211c40d072d2ece87aea5ad670c93fb5b2eead2e776999e9d23348c493d23a6c`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81b84509ea7d3b3dd99845f9bf2e1bd870348fc65ff538b8218f74007a563e4`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4898ce20e3fbc9067cf42cc2eae49df64a39d29a4158c83cc42a6e467a99eb61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f835e15d3a5d17001064b2f89dde90ec8d43b8015a67873d5dbda2ab2c27530`

```dockerfile
```

-	Layers:
	-	`sha256:d0f9b45f483e2bd4c36c5e2c928ea15a89f66e2eaa4a57684acb3e8a36300dfb`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 3.8 MB (3785884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:030ca5f279a5124c8848e6eca3ad7b4d1ba82e775b1389f03d5edd1f16770a35`  
		Last Modified: Tue, 04 Aug 2026 02:55:06 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1c6a50498c07c1ddd45ac56f326247a44329bc4bac0c9f41be891d4a6282539a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164571529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0bb5abe9971098eb5341de6fd6afed2bb3ac89c4daaef2cb6d471e12b2c2075`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:54:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:54:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:54:09 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:55:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:55:24 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:55:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:55:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d753df2d96b13c1a977928655699c504ebfc526c1ba58ac35e9a6653e63e67b1`  
		Last Modified: Tue, 04 Aug 2026 02:55:46 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603c7a47e6c8221ecfc9f994166010e6a8c6672cdd0b3fb24f8c370ef4647a28`  
		Last Modified: Tue, 04 Aug 2026 02:55:44 GMT  
		Size: 18.8 MB (18839462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84943de608a46e162b1b97e5c57f2e7f489fa4940f2507ffe534be1d96a00887`  
		Last Modified: Tue, 04 Aug 2026 02:55:43 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b70ea1c50a74c796c6134a8be94c3bf3ca2a4e4411e4abbae749d9ad57067c`  
		Last Modified: Tue, 04 Aug 2026 02:55:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cd8596f0a34adb04bb94bbb4aacfa3a69cd64c6c7a0a48bd6997e805af08e1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e7edfc8a82f97bd7f5062b8c449deb92fdf79f0013592b288d0d690d13c6f1`

```dockerfile
```

-	Layers:
	-	`sha256:d0346bdf3398b6a0215bfaa18b8606b62bb3118a926ac7561ccfcaad3c84e83b`  
		Last Modified: Tue, 04 Aug 2026 02:55:43 GMT  
		Size: 3.8 MB (3786145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02d807bf910914b7b62f5020cf6eceb62889e44d79a14c4c2ef0ce1d5a1a3f3e`  
		Last Modified: Tue, 04 Aug 2026 02:55:43 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:07c7dcc94eac209e32e57f6205d945054788dedc3b5de01af0d29d98b6410e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168500318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec08cfece615ef1de874968b1b8d96f314e72074ff70db712feac4e32021355`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:41:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:41:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:41:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:41:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:41:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:41:47 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:44:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:44:59 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:45:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:45:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:45:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:45:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09beeca1b50f0298e34ff1d3084ae8b5f7fcde4e0dc5c574a1eea73a6fa2824`  
		Last Modified: Tue, 04 Aug 2026 05:45:40 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0638dc15a4a309336e403dee022ecfb5640f16def0899d0b469442402a6a7cd4`  
		Last Modified: Tue, 04 Aug 2026 05:45:38 GMT  
		Size: 18.9 MB (18936648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8a208db5e3e642ff377e9e6574c13fce91d8841a62c89ff760f1ffe665a5d5`  
		Last Modified: Tue, 04 Aug 2026 05:45:38 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa3504361e9198fc60d9dcd24c16e6dd5a8d9f645aa791abe97111c47d51f08`  
		Last Modified: Tue, 04 Aug 2026 05:45:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8d6288d359e19ebdb0559125ffff131b91ea25247d8d0ba43d3ba3ba503d043f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d5da14f43efc560f0bc36719eab7851f16bb171e4cf6216afcef3b0458c426b`

```dockerfile
```

-	Layers:
	-	`sha256:78e015b852e4c0d39481dfc29682ba59b3da867782b14220186ca1d74f055628`  
		Last Modified: Tue, 04 Aug 2026 05:45:37 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4614d88db4037a376d49872308c756fc38554b87b621d2781e76828b95f0296`  
		Last Modified: Tue, 04 Aug 2026 05:45:37 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:765121f2e533b5374a40af6a93ab6824c50e32521b2e7edf32a5812a3cfac953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161239891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c93d1e777581e92df55bd6502a4827f684c3e9eab474383d7cc7172a592397d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:02:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:02:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:02:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:02:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:02:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:02:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:03:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:03:11 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:03:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:03:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a0d0680bb2d29a59e243daebbbc203a31f131e8e9efa3b6dc57cc061fdf148`  
		Last Modified: Tue, 04 Aug 2026 03:03:38 GMT  
		Size: 88.4 MB (88420383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc68bbf697cb5d4749a134614217c1a0e220c20d2c14a2737d7dce24b452714`  
		Last Modified: Tue, 04 Aug 2026 03:03:36 GMT  
		Size: 18.9 MB (18922138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d99f841d6a33481785a5e6470731246beace6cc6cf79432caad0afc065c738d`  
		Last Modified: Tue, 04 Aug 2026 03:03:36 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f209ed30a3ed71ccaf6bad5a74c3fc1e19d47ef8c14b7101cab7f39fa7fde7e`  
		Last Modified: Tue, 04 Aug 2026 03:03:36 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d7fb3cc997ee960503cd277d51ff45da5e87b9143dfbf4ca8df4e35ccaafa4e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77732bf36446529dfe3126c44dadd578a009a14f1ceb52f16905702dcc5377d8`

```dockerfile
```

-	Layers:
	-	`sha256:bb064210360d4f3371138ba73176f92669363988a43910b8f735a4ae9e7c08ee`  
		Last Modified: Tue, 04 Aug 2026 03:03:36 GMT  
		Size: 3.8 MB (3766873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b291dedaaf10fddec69989c45d68b20523871428dd2159f7a7789c9a1d1e5ff3`  
		Last Modified: Tue, 04 Aug 2026 03:03:36 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json
