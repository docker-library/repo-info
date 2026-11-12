## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:a5b21153ffbf90d249915bd70f3bdb5fadd0b2a9c2f10869fd338c16795a7208
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b282cac81c24329cd46d264c68012c584fd353d58570e90a47ef7fa24f7c5eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197199410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4eeccb7f408f4482bb24413716dd05efb40d03bc99fcf3ddc6e522e6c34ea9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:48:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:48:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:48:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:48:14 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:48:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:48:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:49:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:49:27 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:49:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:49:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b279ddec14887596ad380a06378d7f811a534f834d4c5d7b71e792548915e2b5`  
		Last Modified: Thu, 12 Nov 2026 00:49:48 GMT  
		Size: 146.1 MB (146086197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44098117c702910c800d1c194cb04520f3890b4848b0bfea6fbd6334c7f3e45`  
		Last Modified: Thu, 12 Nov 2026 00:49:46 GMT  
		Size: 16.7 MB (16740986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20536a88925ca21683efb87eb5af13573fd7d25fc858f8ec42aac05fc44df7ec`  
		Last Modified: Thu, 12 Nov 2026 00:49:45 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d77401063584957eb386b6600f0daec7f4c6d7a23e41ab0e845675de25db901`  
		Last Modified: Thu, 12 Nov 2026 00:49:45 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4100d937beb42d500330694f8b6e84291ccd7af7046abd2661b79de7876d3efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd11da86c753521159627f203e56b8841afccd51b8e3eb17e2a2466770301057`

```dockerfile
```

-	Layers:
	-	`sha256:085bfd6420f9c070bc7b3c918b027da071c336f9952bd0944b37e8ab02b5d010`  
		Last Modified: Thu, 12 Nov 2026 00:49:45 GMT  
		Size: 2.4 MB (2371746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbe8491d1d74112069c0f536e2f875011bf7dd6dea459b6ee982b07c9889d8a`  
		Last Modified: Thu, 12 Nov 2026 00:49:44 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5f3efffecdbdb615800fc826e205862fce67545b82fc6eec08e38d56c66f7545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196395146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc1ed1329a58146800ed6d8fc429df20badb012da793dfbe3fba0d379f3d5a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:03:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:03:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:03:33 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:04:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:04:54 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54d9017001072ff03267551e9a1b9f7398006f0796f0beea435f3f04780b17f`  
		Last Modified: Thu, 12 Nov 2026 01:05:16 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292b3d5b4ed8cfeef518f9f9c3b4102686d820efbea54b7bd885059c9405eb1e`  
		Last Modified: Thu, 12 Nov 2026 01:05:13 GMT  
		Size: 16.7 MB (16707827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083eac634c616c35e72bb67ab9d086b92d76d8e25c0ee8499a0ff623a77a2785`  
		Last Modified: Thu, 12 Nov 2026 01:05:13 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b509a7b44669ded3896cbaed658fab9631a129b3f26c3b4979183f163de2818`  
		Last Modified: Thu, 12 Nov 2026 01:05:12 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c0ec450f967480c96935fe5e6726a7ec6a7d9d3a2dd7f1942bca80050d1ac73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:493204d7b9c11f77c2ec9cdf0484311848ad45747571efa5cce7d789654c9fa0`

```dockerfile
```

-	Layers:
	-	`sha256:9e55698cf8d11db25ee78330731b3b121c0a7f846e1486ac21f8acc6ef99a2d7`  
		Last Modified: Thu, 12 Nov 2026 01:05:13 GMT  
		Size: 2.4 MB (2371356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5230782786d668dfb216f28edbc972bad4126cf988f108a48b89d8aa178cbce1`  
		Last Modified: Thu, 12 Nov 2026 01:05:12 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b74f509b0d70a33b39b3d0121c9f6e22ce9dd053eff1fe4ffda94fcb79d83352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199822956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7193056522e15a8dca04d381594a5bbad4cdf820d704ae274d0b20cd0271e447`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:41:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:41:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:41:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:41:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:41:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:41:36 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:46:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:46:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:46:19 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:46:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:31:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:31:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:31:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bd1f0ba598dc223d976f04d012aa541bc41ffc8647af3bd3d9ec8c396327c`  
		Last Modified: Thu, 05 Nov 2026 15:47:01 GMT  
		Size: 144.9 MB (144860487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5614a55605260eadcf8fa5bad9bcabe42257ad34068e6a2ac242ab53342b2661`  
		Last Modified: Thu, 05 Nov 2026 15:46:59 GMT  
		Size: 16.8 MB (16778657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e114eb891e276f4a957799ab45dd99fc8e5795d371d6d6022c191c7991a3b3be`  
		Last Modified: Thu, 05 Nov 2026 15:46:58 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed76ef9e7ec03bc5e54d6a08b0055566fcde5f46401ee9e4aee315b492fe1820`  
		Last Modified: Tue, 10 Nov 2026 02:31:50 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5b0be25443cb1162a7ae90f9152ec28458bca487c59b49a927d82ad9beddb2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5d2ab4fcf2974b085e6cb7e4b1486b882196603cc1b0ab1352497f79572b22`

```dockerfile
```

-	Layers:
	-	`sha256:bd375f3d97d02061b672b24dc6e2d183b993f5e67163012aabb2f58380cbdcb7`  
		Last Modified: Tue, 10 Nov 2026 02:31:50 GMT  
		Size: 2.4 MB (2371480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e624bc71502f4ae38c219a8d1b106dcb3243727a8e9e4646615b164ec384e22`  
		Last Modified: Tue, 10 Nov 2026 02:31:50 GMT  
		Size: 16.8 KB (16842 bytes)  
		MIME: application/vnd.in-toto+json
