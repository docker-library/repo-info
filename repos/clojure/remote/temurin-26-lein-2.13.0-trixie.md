## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:e03ab4f9fcda4d1d9a26e28a5761dbe5059fbf7c80f6b9480112a4160a825f22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:9d39ae35e7f202f8c65d79935a2f189a080c9ddc6a391fd39ccd4109370048a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167358667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:153855af9a4efe2ebc9ca8ec076529c61e60c35c8387205ee4d5c50d221588d9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:52:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:52:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:52:49 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:54:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:54:04 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:54:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:54:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a388377bf4168d5a2f88a2a95a5537d43c8548339e2765422e16f504e27dde`  
		Last Modified: Tue, 27 Oct 2026 00:54:25 GMT  
		Size: 94.6 MB (94563501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21640b1aba4aad6ebab1a6264d708898ae4aec317c7b75490a9976ab3fdeabf6`  
		Last Modified: Tue, 27 Oct 2026 00:54:23 GMT  
		Size: 18.9 MB (18885937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd5d01f8526e3593b7b1acf48f6850607488c54407c6f1f42b64a80d90ecf9d`  
		Last Modified: Tue, 27 Oct 2026 00:54:23 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db30bed8b8d74d447ffbaba8020bc2302eda70c9e62c8c41fbe4bc6acd60f68`  
		Last Modified: Tue, 27 Oct 2026 00:54:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4541dce34b0f1559eb0834597f950b72341bd39ad890235a8d88daeeae2671c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6951ccd4e28353267dcc359b008a365aec055e2a74bd06105541b9d6ff65b4`

```dockerfile
```

-	Layers:
	-	`sha256:82028c9bfb77c1fe0c137a99b9861ac5af0994fd68551d3d1c34b95f8ad52b89`  
		Last Modified: Tue, 27 Oct 2026 00:54:23 GMT  
		Size: 3.8 MB (3791363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bf6915378c8abc6cac9a9139194ea1cfa032dab11c5d3a9bffb683fee7ef47a`  
		Last Modified: Tue, 27 Oct 2026 00:54:22 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cae8b4c6b23d63ba511c973a483b74827c1b6f55d8d9055768acfd536cbc3c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166675428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:965d17094e7379517b6ed1e075923f6b6a65380ed67443d8213dd15f7699b873`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:52:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:52:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:52:50 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:54:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:54:10 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:54:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:54:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a59a9b63cfd050fe15594418b60a3eb283f820886b81ea44aaab51b850ee0dc`  
		Last Modified: Tue, 27 Oct 2026 00:54:31 GMT  
		Size: 93.5 MB (93543599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3493a91d7b2cb46dee56f384c615759c9da4097fc88aa95076436b190b0e762b`  
		Last Modified: Tue, 27 Oct 2026 00:54:30 GMT  
		Size: 18.9 MB (18854623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2e429f330552ff3ec2e4e9266977b317973a758f29d3519185060a4fca50f0`  
		Last Modified: Tue, 27 Oct 2026 00:54:29 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3a227348a5818017232322a78378345527e7ac54c66c540ec2480131fd2422`  
		Last Modified: Tue, 27 Oct 2026 00:54:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5e3946b079721eb951f237fdfde4c01c4ae672fc557b4bcf8bee2ca927e76076
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0404f10c3487dc0190bd54518da66330bdd6aacb1e911380b62323febd248382`

```dockerfile
```

-	Layers:
	-	`sha256:6565e17c02bcd70b64cb0e99e3788688b31e0f88c4359cd9d9a1be467d6ee53c`  
		Last Modified: Tue, 27 Oct 2026 00:54:29 GMT  
		Size: 3.8 MB (3791600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae0848deb8b0170049b9051f71322f2452dbc85feda82d8559d166dd6dfb23a3`  
		Last Modified: Tue, 27 Oct 2026 00:54:29 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:845d2ac835e51b8a4a1d8f05561f092496dd9f2b41edf43c8a3e996838213641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170014440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776ed53d96ddd8e807c4fb61efaa6ea206495a24028992caf23aac95147f1879`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:06:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:06:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:06:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:06:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:09:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:09:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:09:49 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:09:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:09:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:09:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:09:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4eae5bc71ca350693525cbf16d93b518a15152af983a68ab96e88feb15b4ec7`  
		Last Modified: Wed, 21 Oct 2026 11:10:36 GMT  
		Size: 93.4 MB (93350823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd16ac9cbf24542dc9db212fb19bc0795e65e32e57807c3a020446ebe0ca8f`  
		Last Modified: Wed, 21 Oct 2026 11:10:34 GMT  
		Size: 18.9 MB (18940399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7509a6fa842c33c8d34ac4ab71d3542dc35d7b6c24a97f2a7f85756d2aef0bcb`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8072911173b86665537240f1f66b0ec68e452136f4c313185062c3a67a1a56fa`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:32c9e584ff620f03a0ff37b809d98be77a1364a258954e7fbd032b71f216991c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3794052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca49b89635908dd40e4c014134640a33f5db66da8793db26cbe043aa6122b65`

```dockerfile
```

-	Layers:
	-	`sha256:be04fa43e418dfb8ad74a53e15fc1b1e375cd33576eb02d435ee12d4de177228`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 3.8 MB (3776297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6188cd7d3b0d0baf6b806bf5be6d94eb0107b8126e9183af77d3426d62e7d7`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
