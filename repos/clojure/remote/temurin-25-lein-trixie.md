## `clojure:temurin-25-lein-trixie`

```console
$ docker pull clojure@sha256:a8eeb5d17bff44582b91954a9f9dab4fc4d6feafa9033350ea770c4bc891a9ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4c47e4c6613482cf4233754ece99f1218e92bd8c51d3dd575225d2a07cc51999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165414327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747ca87e67cda6b92ee89868a8040facf955e7b5e7b4dbc806f1b468fa1e27b3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:47 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:47 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:13:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:13:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:13:01 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:13:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:13:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:13:03 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:13:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b76cc7e8585fd6acd618983effe77366a9c3a7229ffb25a76830efc42d1760`  
		Last Modified: Sun, 11 Oct 2026 13:13:22 GMT  
		Size: 92.6 MB (92618064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67f9847f56a3b277baf1db52eb987960acb0f9c08d808797d4e433f2e2ea46a`  
		Last Modified: Sun, 11 Oct 2026 13:13:21 GMT  
		Size: 18.9 MB (18887417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea6dbe58821b0f0b2e503b7e2fe2c427a54b91e348507342ea909c53e662e5f`  
		Last Modified: Sun, 11 Oct 2026 13:13:20 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3fcd1f21af99429d6da1fb5d61c20f086384e9798e66a7f244b1c27008fa16`  
		Last Modified: Sun, 11 Oct 2026 13:13:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eeabf35e8e764666a27e0f198fedacb88f9b33eec1e92ec3adc087dc036cc77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9789571538b46f80ca6d479f42f558cb2f56a1278651befb228104599e4618e`

```dockerfile
```

-	Layers:
	-	`sha256:f9f27071a6d6f9fe2c1ae5d6c487089625c4e7a08d7fe7b0c44f347e31d730af`  
		Last Modified: Sun, 11 Oct 2026 13:13:20 GMT  
		Size: 3.8 MB (3795777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:210862476277db8b7567fb2843b462c0ae6d4e28f21738eb5e71ff0c5faa960f`  
		Last Modified: Sun, 11 Oct 2026 13:13:20 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a6af0fbfe9d11796a5ab823091c704ed735b3d43f68bcaec2104f2246cf5700b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164650886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13eb770572b7a39016379cdf89e9f66f0f6b373d9bf0338e7731b95cd68336b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:17 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:17 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:34 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:36 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cb7303040f65d673f8e42ec4f54620040ffc2bd6dec69f7124c99f0bf848a0`  
		Last Modified: Sun, 11 Oct 2026 13:12:54 GMT  
		Size: 91.5 MB (91528800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa71a2222b93be3332bcbd025f7917208bc31724a4a57e6de01bbfac8900ccf6`  
		Last Modified: Sun, 11 Oct 2026 13:12:53 GMT  
		Size: 18.8 MB (18845341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1eb9df75d747b94c2e0519a94a7237087e10a7a18649c5be3c876c78c3997a`  
		Last Modified: Sun, 11 Oct 2026 13:12:52 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7652727b2cc5c5439117b650732594642bbc8e6660af2be7e3f00ab46d7c34d`  
		Last Modified: Sun, 11 Oct 2026 13:12:52 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3072d18d00198f21cfeab39f2e8a77184fdf485d4024b1364ee9d2eab086535f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c466c7c2b9cb57e2a5920d576b92b4f80af2218de6ca27472aa6f168821ef0`

```dockerfile
```

-	Layers:
	-	`sha256:72a898742627f090a50d27d95cbb3d2987cdf220d530f74db7a896d7ca21ae5b`  
		Last Modified: Sun, 11 Oct 2026 13:12:52 GMT  
		Size: 3.8 MB (3796038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc513d597ad5808a2b40031ac019f488509820fde42afd8d4b74594c3c2f7b36`  
		Last Modified: Sun, 11 Oct 2026 13:12:52 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d609031a37ed35b8dbe4a996e10b33c1799e5292df7d5eb0fe03f19d98624dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167921765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15913bead717e1fa6749ef666ad9f5c74075f2f14cb6d59bc550aa3018ddf451`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:34:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:34:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:34:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:34:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:34:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:34:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:38:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:38:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:38:12 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:38:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:38:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:38:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:38:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb8fb7d66b8e5b0e5addef4c5314a040dc33a4b1394fde24c55b987c93d89f72`  
		Last Modified: Tue, 06 Oct 2026 10:39:08 GMT  
		Size: 91.3 MB (91256255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8225196fa3979393ce3813992d1c364af705840007c39c88c7b25258923aabf6`  
		Last Modified: Tue, 06 Oct 2026 10:39:06 GMT  
		Size: 18.9 MB (18942738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9609574111fed05d4d7fbfdfc8d183cbc2663c1448d171bfd36529850de6c6b9`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a2e60091d813a90e5648d59de63bd6bd6e07f4b9b655d9837b6c31a3a1cacb`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1d176789c4e4e497997a88f918dc6bad01097e05f91eec3fef5299704ea13c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3798500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea226c4856c90a0b4d7955b0504728daf9644bcd75f73aef08fb01a298f015e`

```dockerfile
```

-	Layers:
	-	`sha256:29e414673f3eee7e4ed7d228103f4d44768a4fc398b2b1e70cf6938b1959fb15`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 3.8 MB (3780099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f37eba9176ee6d9c226fab1e4532b30d041e5af38b023c42df0c63fb3b0f534`  
		Last Modified: Tue, 06 Oct 2026 10:39:05 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
