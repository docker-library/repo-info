## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:e9c158e985b2317d6fb2c4a1e2f99d64af46cccba42d481198b7b6c0a0d2d82f
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
$ docker pull clojure@sha256:8b048f63f2cd6b81e0c467a17e1ca2f2443f7c58474bf2421458957154775f8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196950819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed6c04e12edd853d4fca4a30fcd4ae829c75417db7c72e37a9344f696eea90d4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 18:07:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:07:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:07:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:07:59 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:07:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:07:59 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:09:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:09:18 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:09:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:09:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3427009b92b42d1b682a1e0eeeacdf952bfde2236976a25c3e21a291c4163acc`  
		Last Modified: Fri, 20 Nov 2026 18:09:39 GMT  
		Size: 146.1 MB (146114276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a9bdbca00926574600fc74a7cf9d9afeadceab6af5f393f51a170aa30430b51`  
		Last Modified: Fri, 20 Nov 2026 18:09:36 GMT  
		Size: 18.1 MB (18072430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4337d4da4ce4baf6f74db3c0234cdeccc20aeda7e2e988fba51fc3d804c786`  
		Last Modified: Fri, 20 Nov 2026 18:09:36 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672d9dc4b1b1a3ccac4fce10c8d2884f386baf9d9343e44706de185ad6f73c54`  
		Last Modified: Fri, 20 Nov 2026 18:09:35 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5d6cdafa5a954b81b57e37a2a76ae0312af6b1fd32956014beb5bf88bd39c1b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a60f0c1c82cc0e44dd862f33dd333796d8a60e5505a734f879acd63c61126b7`

```dockerfile
```

-	Layers:
	-	`sha256:4e6b68f5ab2470353bc6b296b2455af65343979f48f6046fe16cf4ec6c63857b`  
		Last Modified: Fri, 20 Nov 2026 18:09:35 GMT  
		Size: 2.7 MB (2736323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b0a51f970ee41632e3ee807f7847ae1209d3d70bae4d50d06cacda451ffecab`  
		Last Modified: Fri, 20 Nov 2026 18:09:35 GMT  
		Size: 17.8 KB (17772 bytes)  
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
$ docker pull clojure@sha256:9858dc4a7368f72cbdd20ef328f05448b82aa4a25ee61f210de697cdbbed097e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199781706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663cd3ceb532dbe600e5872abec22c4b7b560d45287efd4764c5cdabe5a9a3d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:14:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:14:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:14:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:14:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:17:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:17:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:17:11 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:17:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:17:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:17:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:17:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a224f32b4613abcec12974810a9ee61a493bd8337f9f6c0b67261fd488c02044`  
		Last Modified: Fri, 20 Nov 2026 19:17:56 GMT  
		Size: 144.9 MB (144892615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829921556cbcf5d87b8e29ba351210c234a1bec51b7731f1f24711d2fc7bcf39`  
		Last Modified: Fri, 20 Nov 2026 19:17:53 GMT  
		Size: 18.3 MB (18279373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d2b1cf163f2bfe15a2e9b8508789f3a911dd779dcc0337a6698a433b8428fc`  
		Last Modified: Fri, 20 Nov 2026 19:17:52 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7143354b7d79a97388830428ce50acaabd2fbac7312158dec86760f7da149034`  
		Last Modified: Fri, 20 Nov 2026 19:17:52 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:70121b4ccc555ca482a750955f8a47d16f6f1236274c7b6a2aa876926d0648b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29ce1afe504b40432ac0f24c42ec192c95f8feba791bd683f7d3c5d381bdeea`

```dockerfile
```

-	Layers:
	-	`sha256:bfcd7be62212b038ef5eb48b4983d22c6ae1194b30b06cf940afe25eef9e5d87`  
		Last Modified: Fri, 20 Nov 2026 19:17:52 GMT  
		Size: 2.7 MB (2736910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e28ec1f8a39f6ff45bbda712cf27d9e92531c160d0bb1d678faff5ad6e1f9053`  
		Last Modified: Fri, 20 Nov 2026 19:17:52 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
