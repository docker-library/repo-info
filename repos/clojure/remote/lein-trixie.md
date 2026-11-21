## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:c005dec8211183f4d122f1d2bab32990d5cde6535e0c7605b0c6a844130449b9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:21ac0b076ec2b7a59ec66e4676f1afcd56e3a40b7e0e29c9c73dc6cf4c12d510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165427432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c203fab83705c3c4551e855c082ce4b4e1a479bfa59d8ea6c7cab984e3d66c6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:50:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:35 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:50:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:50:35 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:52:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:52:01 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:52:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:52:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:52:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:52:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dde4606ac9769946a9cdcca1e0e6e62bf8f4709477b94c74cbcc19b61d63f5b`  
		Last Modified: Fri, 20 Nov 2026 17:52:21 GMT  
		Size: 92.6 MB (92613958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e34380aafdebe34f304968157039adc8cba3702765db8674d1a0f7a28a19ce`  
		Last Modified: Fri, 20 Nov 2026 17:52:19 GMT  
		Size: 18.9 MB (18884842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e502b19d5e6e8f4ef33388a5de088899273302733de85ab0b643b6f8efd8b60`  
		Last Modified: Fri, 20 Nov 2026 17:52:18 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896343802848a6cef9cd1add8cfebbaabd9731ff54b0a7fbc19434938c960f9a`  
		Last Modified: Fri, 20 Nov 2026 17:52:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1cf860fdf35c4649548c5031f23c3166ccaaa13ef0f886b653b0ac262989691d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88d07566631b9a9d1a00e80fb48cbd3adeab59334d55535014c5ebda98ed18f`

```dockerfile
```

-	Layers:
	-	`sha256:cc87d7158bae0edf604e3b223fc91d5a792ff90d6f395b19a1a88f69b8b0324c`  
		Last Modified: Fri, 20 Nov 2026 17:52:18 GMT  
		Size: 3.8 MB (3794500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6bc86286d7698bc4e75bd327ed816b169b7435a3992306857530f5d4ddea2a7`  
		Last Modified: Fri, 20 Nov 2026 17:52:18 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:43ff2112cf9652c5dd35c9ea775d5dff462c7e8bb90e7f777222eab63541a1ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164703099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c8619e79f88d60f2e1e943088a79e402a3999c6b24b9c62333b876820f7009`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:45:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:45:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:45:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:45:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:45:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:56 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:47:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:47:28 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:47:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:47:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:47:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:47:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf930865ad2ae4ab0ae4233f088b5e23f5967197fb2ce27ee4570bc7dab1be5`  
		Last Modified: Fri, 20 Nov 2026 17:47:49 GMT  
		Size: 91.6 MB (91554065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f7ae20369c902d9744871306653e273b31f8d11e270967795c2351b2010469`  
		Last Modified: Fri, 20 Nov 2026 17:47:48 GMT  
		Size: 18.9 MB (18854284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b95b10e3a997018fe1355df2f590dbfc9daf6f5d2d773f66bae7d0dd2e88e62`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd57721f5baf0b4ee5575898b0c675ad2a568c067ac2c5db83beaa1dd7cdf9a`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:51659bfb4b3d79c253bb2f938686a8d48a065fac1d09903bb46ee8afb127bf5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360b27660b2360a66e03ae1390d0d0587471a121d9a142f4ace86f02530fedce`

```dockerfile
```

-	Layers:
	-	`sha256:784de62f8c4a6120424abf8f04f36390bbf3a5e5a0457a06d63e7a95ab2fa82c`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 3.8 MB (3794761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2ec1f39b704d92871795111ade48d3b37a3debb17b5d3fb8a34416042ffa2a4`  
		Last Modified: Fri, 20 Nov 2026 17:47:47 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:50c9c0f3bebbe7f85b1dfb8536ac49f88dfeefdd301fbdcd3d1472720f77b654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166801714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83de7c6edf607cb1f11a7da219640017a8a55c9b63414d79b51d5f2b9ed26887`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:47:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:47:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:47:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:47:29 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:47:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:47:30 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:50:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:50:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:50:47 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:50:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:50:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:50:52 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:50:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febe6297f2c0e01e55cab94b54945da73efad2a95f4b72148fe950b5d1274b6d`  
		Last Modified: Fri, 20 Nov 2026 19:51:33 GMT  
		Size: 90.1 MB (90119619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621af97086ad33c02a95363963df482a90a5f2de442b69f4f612538b85b9124c`  
		Last Modified: Fri, 20 Nov 2026 19:51:31 GMT  
		Size: 18.9 MB (18940355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5aec263b991252ffb115b3814c018f7b68d5a054245e0d2aae9f887ee92954a`  
		Last Modified: Fri, 20 Nov 2026 19:51:31 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf59e6b1d6640a2f3272f1f50f13970dbb57bb0181971c5970d705b36b3a9154`  
		Last Modified: Fri, 20 Nov 2026 19:51:30 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b585ea825444d59868e38718d49a9d48b0c19d821ba4040913a6fa85566074b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62438d27ba5eac21941817e78ffc3d6be87bddeae1141c68c04e4df9e1791949`

```dockerfile
```

-	Layers:
	-	`sha256:8ead83adaf5f458c84fa3b52b5ca3876891117c2c524bd156ea11ffc0162e897`  
		Last Modified: Fri, 20 Nov 2026 19:51:31 GMT  
		Size: 3.8 MB (3776961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5efd6fb71347fbb000f895358432c9c0d5e8b065e3997e53b9d4ea724e82b8f1`  
		Last Modified: Fri, 20 Nov 2026 19:51:30 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
