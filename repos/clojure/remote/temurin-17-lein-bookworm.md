## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:3d597972a376afd8a81ed499fab7132520717f08aaeed2dd819393b75b8ce253
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:83d211b83a2a3467ae19e92669c5dedc17d50ce79879d09bcfccf7d13ed5bb0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221307752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad91df1b1372a7cab8c1e092cc11ed038667b042ca3c94a669eb19ceeb51032c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 06:12:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 06:12:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 06:12:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 06:12:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 06:12:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 06:12:18 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 06:13:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 06:13:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 06:13:29 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 06:13:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 06:13:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 06:13:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 06:13:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77694ebcbc6f448e443fda20740d00f66806238ddf676d85b5ef708e444c4d87`  
		Last Modified: Tue, 06 Oct 2026 06:13:51 GMT  
		Size: 145.8 MB (145825452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fee68cb79fc192cd893987da4f56715e814d28a508f7223c3e90dd47915d922`  
		Last Modified: Tue, 06 Oct 2026 06:13:48 GMT  
		Size: 22.4 MB (22448640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5304ed0933616a4fe2ec777b293faef6e502231b689161ae2ccf18f7b679e`  
		Last Modified: Tue, 06 Oct 2026 06:13:48 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb006a89f4c6bdc14104cb4a0e687baebe351c2bcf0bffd5a93548eb72ce4542`  
		Last Modified: Tue, 06 Oct 2026 06:13:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7bc6e2a9eec3683901777bb51ae3fba3f3b87893025a8c1a22463a0a5a64d963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf8a72a55f5b40287b57571c9f380479ae6491939c275fb1a535e1ea6601a6c`

```dockerfile
```

-	Layers:
	-	`sha256:53721231058e2ddf427e886650b149da1ac8493167cebe36d662da90a5122ba0`  
		Last Modified: Tue, 06 Oct 2026 06:13:48 GMT  
		Size: 4.3 MB (4289299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a60daa585d29b57a67cf701d66554101ef629177da565ac0754dc5412295136c`  
		Last Modified: Tue, 06 Oct 2026 06:13:47 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8e0eee6e8c686002fd6a8769487a0f5260f14700fb64af750f3453c5bb142420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217520972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d956f8bf3b31c59a11f8347a2e369ec8480a0e6e6062736cc64175771fb84119`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:44:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:44:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:44:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:46:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:46:08 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:46:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:46:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:46:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:46:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037501c9a7a817f895c4c18bba848f31a00428efd962745787ce47838c2b7519`  
		Last Modified: Fri, 02 Oct 2026 02:46:31 GMT  
		Size: 144.6 MB (144648265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb38db1f1a674761f26517eac4163502896cee94073b9dd26ea14046884902e`  
		Last Modified: Fri, 02 Oct 2026 02:46:28 GMT  
		Size: 20.0 MB (19967160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4840512181bae376e27b4487b4a9335b04649eaddbf4ca04e0f988c1c91e9e3c`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ae6908b4ec157762b26aeafaa3d61371140e6efabae339c240810d11c8ceb`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:995ebca7230062f1ca8f6fb3f3951145623bcc22fba6681147e1dd4d0831dab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a2d4803b56c4daf3c43ceb8726f658364f911a700ee2c446391dab0b367631d`

```dockerfile
```

-	Layers:
	-	`sha256:4a04a45b0625421f4f2b053208ae2faeaccc9db2243767a03bd03de1b168d9b7`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 4.3 MB (4288914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c62a7366ba7890d467f109f50d0ba1a85da5bb2e07149e209465607d50e372c`  
		Last Modified: Fri, 02 Oct 2026 02:46:27 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2753337862c36a47ba32a50248fc755708f439443532e83bf0b1f7d02ab07bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222895018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344397e21a7ae9b52a5b656ac3805eabc49a85ff59f9ad3aa632a92ba8b7ca2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:56:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:56:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 07:56:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 07:56:32 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:59:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 07:59:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 07:59:54 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 07:59:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 07:59:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 07:59:58 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 07:59:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe6b4f9947e159345c2a5cc07a4b2be3095c06f0324d673a007216e919ba83a`  
		Last Modified: Fri, 02 Oct 2026 08:00:43 GMT  
		Size: 145.7 MB (145671507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af19953f8a308ce07df97b65e9be6478004a264673706e9c7de6a390319732f`  
		Last Modified: Fri, 02 Oct 2026 08:00:44 GMT  
		Size: 20.4 MB (20358556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36d79dfce08438b7416119ee2d5236b851e398aef95cbc61fd81ec36b30f2ce`  
		Last Modified: Fri, 02 Oct 2026 08:00:43 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b833a6638bdde3f23cce501998eb2f226f763dfc210714578946634b332550`  
		Last Modified: Fri, 02 Oct 2026 08:00:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ddd204587feb01cfca707a6832efa3b2c45d6766f4d3e52b39c144c68fbe7890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644a874d14be0313af5997c27eadab52896c974b86ea9e684871a5cc6337d3ea`

```dockerfile
```

-	Layers:
	-	`sha256:6f1ca79b53a42285538d036a9e0aaa8aad360216d454f15479b431e3c5054a25`  
		Last Modified: Fri, 02 Oct 2026 08:00:44 GMT  
		Size: 4.3 MB (4291160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0c9da855e27e6e6e9620c9851f862513f8720e9ded3b53266ae2fa3b26dcf66`  
		Last Modified: Fri, 02 Oct 2026 08:00:42 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
