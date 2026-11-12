## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:81fd3e1104f7f41a1753cb488eefd16b0ee1f50103799e57502044414e3add45
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:78cd229ad40192ed367707cd46f290800fa2385876b7b72ff7bd2baa3f815c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196923016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc12e16c76462c9e26f7567f6244af14d118bc9b39b473d1bd1cf1e48577224f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:47:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:47:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:47:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:47:57 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:47:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:47:57 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:06 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:49:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:49:06 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:49:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:49:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab43d9483fa3a6cfe393e2852fb9cfe93940d4cad31a4b2fd8b648914940e39`  
		Last Modified: Thu, 12 Nov 2026 00:49:27 GMT  
		Size: 146.1 MB (146086152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfcb978555d1dc977033610f125c9ad00c8a2ddf04727f9cd8f975530025231`  
		Last Modified: Thu, 12 Nov 2026 00:49:24 GMT  
		Size: 18.1 MB (18072751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5bfb17d3d30a3e3c18954434cfae4349b459f861714816db4ea93d449905df`  
		Last Modified: Thu, 12 Nov 2026 00:49:24 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d26749c667b55a93b15931569abd39b7e55e49ab5f930c0e0df06ba15abfc38`  
		Last Modified: Thu, 12 Nov 2026 00:49:23 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c1bb97330698ae10a2f4155c2fd448583b99f657c7c9405aeffe5be4f27b8bf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b444f63f8592f74f01d796f083f1218139499b22cc07b51a5032a3a1e077af`

```dockerfile
```

-	Layers:
	-	`sha256:43f605e75750d95ae0ce5dec3d2aed102677cf4e7a1534d2f7fefc8cc858f09e`  
		Last Modified: Thu, 12 Nov 2026 00:49:24 GMT  
		Size: 2.7 MB (2736315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8845dcf742606b0e48590609428e827a0112aef0c6fec629e44cabaefaf7391`  
		Last Modified: Thu, 12 Nov 2026 00:49:23 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:da80ae2e7e4586df14d7d8e587bbdd3017a7aa70970f9a4a1fa45aa6a16d14fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195523979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67551b748aac41c705f17b3561edc8c28d40832203f5239669ae3c2591a98daf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:03:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:03:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:03:18 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:04:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:04:29 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346ba58bb31ff11f879594790966289e11c1f23e1d0f572753ca2766d4340d2d`  
		Last Modified: Thu, 12 Nov 2026 01:04:51 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc00f72ac40b9ad754d190ddcb4d0e7fe509f8d83d5ef1e2a889f80daaf1dfb`  
		Last Modified: Thu, 12 Nov 2026 01:04:48 GMT  
		Size: 17.9 MB (17906339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12eb750237e5c8e2020faad43d1f1cd6bca9d85dce2c40460d46d8333bebcc2e`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1eb27b2632c4c422d2f558bdb0ff4dd9f2184d5ba1701d2f713f4c05be516a`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:532ff945fdb97f323f9308718d3e6b2913abd035c2fd28f5ab358794fcb3f474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8573beac3c281bdfd51fab8ebf9b70900b5ee5540eda5e8e739efa08b94779`

```dockerfile
```

-	Layers:
	-	`sha256:a90262ced7d895b1d3d5d3c88c5cc62123385766b547a37c37e193722a7fc076`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 2.7 MB (2735930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ca3347ef2e44e983e0dc542f807ce94d7a811e1dfb00ce12e095318b1b5f4b0`  
		Last Modified: Thu, 12 Nov 2026 01:04:47 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:240f82a84e58afff0924c2e6a42bc2895feb37b8ab9620ec9e88b4b6f685f4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199749657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81668d46091ed8f8d32298a5133225c068e8fc5e8eafacc3d41ca0db3685af3c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 08:02:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:02:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:02:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:02:14 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 08:02:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 08:02:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:06:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 08:06:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 08:06:15 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 08:06:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 08:06:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:06:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:06:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8154dc284622fb4f6b2910a339d4e429599729583b608bae1fdc5b72270941fc`  
		Last Modified: Thu, 12 Nov 2026 08:07:17 GMT  
		Size: 144.9 MB (144859676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94f49f48c9f3f32f5df39a683ec60d2c01585e4d4ec23281c84295ba80e98de0`  
		Last Modified: Thu, 12 Nov 2026 08:07:14 GMT  
		Size: 18.3 MB (18280254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12bfbfaea345d718d50e08ebe773f36350cb8a6aa670d4988cf5e4cb4349cb8`  
		Last Modified: Thu, 12 Nov 2026 08:07:13 GMT  
		Size: 4.5 MB (4515237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba624de7cfbe84a3eaf3d81fee3116bd7b8da2c1d2431f71602f780470de4868`  
		Last Modified: Thu, 12 Nov 2026 08:07:13 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0226811388d079ac4a7cdc04c4ce6e051a8d16766aacb24a404c9f3d6e7ef902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c292fcdc87a73881aa959e761aa58b831474601f77447ba501b46846a26f4e9`

```dockerfile
```

-	Layers:
	-	`sha256:b7fd6dd7dd2f4ff89678e294d0a2da7f8371ab51bae5409bb62af32864a52394`  
		Last Modified: Thu, 12 Nov 2026 08:07:13 GMT  
		Size: 2.7 MB (2736902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa28eb698ab9513eeff3f8d386b4241a44d13bb094fcef69cea56c1debb257f8`  
		Last Modified: Thu, 12 Nov 2026 08:07:13 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
