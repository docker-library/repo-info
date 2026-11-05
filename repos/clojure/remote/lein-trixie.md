## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:443cee1caa534a8487d6ca88190a877dae18790bbaf1a040d5e24fdb7599c3e4
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
$ docker pull clojure@sha256:cb1e802d8913caec90c8c4e08085fb1c11c0382e1d9590852418fbc97280cd95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165412231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52b32d2632d875172f5376aac9cf4abd50ae02a17a6d16d470ff714d1208024`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:10:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:10:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:10:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:37 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:10:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:10:37 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:11:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:11:48 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:11:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:11:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:404c34938ff12ee4a49d745c66cddb7e58fa57a331fb739d1e3a51b1aef62775`  
		Last Modified: Thu, 05 Nov 2026 08:12:08 GMT  
		Size: 92.6 MB (92598904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fea3ee6e7f54e273d391513430d166cd4ad74568d01b8b46c2cd2e7f70b61cc`  
		Last Modified: Thu, 05 Nov 2026 08:12:06 GMT  
		Size: 18.9 MB (18885213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325250bfc442a0e328097f8c22953a1ea6b6b0a00a208d7fb01443c5765042b2`  
		Last Modified: Thu, 05 Nov 2026 08:12:05 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82bfed070b391d63d97ff235ebd5abad8a3a801e7731388488cdb0305f82a1b5`  
		Last Modified: Thu, 05 Nov 2026 08:12:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:89360162b075c5083c475def3b94adde65a0393f84dbf97eb0622e1a5fb20bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b84c4e2c5f91da3e61ce211c3f7348146faaf2cc6af4ea77b21d8eb74989cbef`

```dockerfile
```

-	Layers:
	-	`sha256:940ae433c55b026f0a266e1e2d2078ea9410246122f220fef32d3d594f098e40`  
		Last Modified: Thu, 05 Nov 2026 08:12:05 GMT  
		Size: 3.8 MB (3794492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11048ba2085525e1fce75f2cb7a0cb676b3f6199238f4b0096b23603e814dff0`  
		Last Modified: Thu, 05 Nov 2026 08:12:05 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61ee374b4f656f2abeba5b0f502c51447fc57b244d25d014fe69c50ccf708ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164663087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db4ed3633f69ad222ea1afaf1711257a68b87287c67e219aeb576561f1b8424`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:19:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:19:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:19:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:19:47 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:19:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:19:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:21:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:21:08 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:21:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:21:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a03e6ab21b7fa15ed25b423353785747e50027da7750c380b28922cc8a7598`  
		Last Modified: Thu, 05 Nov 2026 08:21:29 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de351b5a795324abdf73f836aebaedefc6c40a94a09854743186d507e8870c3d`  
		Last Modified: Thu, 05 Nov 2026 08:21:28 GMT  
		Size: 18.8 MB (18843243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81037b01838963acd17e9baf0e9ebdb1a22eaabec294cd8d48722bb965bd8845`  
		Last Modified: Thu, 05 Nov 2026 08:21:27 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8a4170d87e54309c4ebfaf671eabca1b794ee39805134f37b71d3cc7141ee8`  
		Last Modified: Thu, 05 Nov 2026 08:21:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b71e3ca7001ed511f997111a52c86d8e188e429acfec8d73f3a697df4f657af3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f082f378a23c5ef5a0410bff03c37d925784e06daea651b68bbf7e9d929647f`

```dockerfile
```

-	Layers:
	-	`sha256:937361ba1c6bc279987216c3aaf7f2fa83e8c41837f4239a898b0b91b1c9f345`  
		Last Modified: Thu, 05 Nov 2026 08:21:27 GMT  
		Size: 3.8 MB (3794753 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cac458c9865ad090539f30f806420c8322209ef453e79102b668c3b0d5c3fe0b`  
		Last Modified: Thu, 05 Nov 2026 08:21:27 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1dbcc64fc59c57f216cf28cd9ee0fdbbf71f34a6bff8ed3a0146ac75666921e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166789608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a17ca6540d97f49c9b11d08eab75196cc0092e3a3a1456571e39a115120232`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:34:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:34:20 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:38:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:38:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:38:13 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:38:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:38:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:38:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec987719a309d018379ffe9ed711b890b4cf54c38b046b86d69b8e3ff1cf3b7f`  
		Last Modified: Thu, 29 Oct 2026 20:39:00 GMT  
		Size: 90.1 MB (90111714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c283070da83df2c2f6921bf7eb3e495fee040d1feed0ebf03779af38f236678`  
		Last Modified: Thu, 29 Oct 2026 20:38:58 GMT  
		Size: 18.9 MB (18940008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84026a51c22187172b2342520032ebef1c6bedd5a15f707cede3f4733434fd6`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc0a3f3552bd1ce26b45520f612cad8957f4ad861f7eeb790456962e5100ce7`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e12537adc9e376d0f5fb506321aa72be81ddff59633c7f672102945d3311bae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be8ae3945b430d6c807a5aafcaf3d1e64d6aa9d50f19ce16736735bd2affb68`

```dockerfile
```

-	Layers:
	-	`sha256:e1c833453531bc94209cfe575f9955c4318b5847151578ed21cccdaeae3a71d8`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 3.8 MB (3776953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f872fe856c3b5a56c0c771da91d0d927ea2376ee9407d45ad481985da9ff6992`  
		Last Modified: Thu, 29 Oct 2026 20:38:57 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
