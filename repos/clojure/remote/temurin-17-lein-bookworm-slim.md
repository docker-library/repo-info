## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:1041e5596f0e72d6116290fedd67c1ce1f17171173c5319256081285b8176ba6
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
$ docker pull clojure@sha256:25af50e22a57dce9f64a13a76ba54cef0d868df911683714499aa5f237ff7189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196661629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222a5f82bfabb530742279096b75d06470b3db590653cbff1c4b7762a41da11b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:48:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:05 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:14 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0780b3f7466690ed640ce416d4e50afd5594d113982147f9b342e72b5504a504`  
		Last Modified: Tue, 27 Oct 2026 00:49:36 GMT  
		Size: 145.8 MB (145825465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b6e7830dda36c3e7934e17cb5e8aa89a84e8c3629ed45a091ec2828ff2d66d`  
		Last Modified: Tue, 27 Oct 2026 00:49:32 GMT  
		Size: 18.1 MB (18072587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69b6d3d378d11de65e55528ed9656f54999c8fcdb73a0dd2bf97cee9326f9bbd`  
		Last Modified: Tue, 27 Oct 2026 00:49:32 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfb88cb2c530b1589483b2c5ef0fb353fe2d3400bd449d718d3b869f6251218`  
		Last Modified: Tue, 27 Oct 2026 00:49:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:177b2a110fd20f3c192a75b9ab7c145131b2d596b48a555c1bc5467e8438c619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a71e46830e390d88319ccefcda8ddfa46193d0dc2e1fa117e0bfe68b0e58eab`

```dockerfile
```

-	Layers:
	-	`sha256:7220f7aec93cc3e2cc1e0dd809056d40f606a6e3cce84d2a0c2474bcca097d4b`  
		Last Modified: Tue, 27 Oct 2026 00:49:32 GMT  
		Size: 2.7 MB (2736323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fae2e0c888d3692a57ae996c458c41d120d4483280fa150fa1bef3d0b613c5f`  
		Last Modified: Tue, 27 Oct 2026 00:49:31 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ab7afea2100f83f8def89182ec2498e7f8e8694e4233d56fb0fd7430ffd1eddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195218600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18ef914a8a4a606272dbf60faaa5ba80c4f1be2cb0abc6d1fa77ab415b9fd36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:47:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:47:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:47:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:47:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:47:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:47:51 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:01 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ce1ce10c83f8d42fea5bc3895c31730d7968884344e715b926af7013ff028d`  
		Last Modified: Tue, 27 Oct 2026 00:49:24 GMT  
		Size: 144.6 MB (144648246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8673751b1cc8d4445bb26e91697bbe9743ca158e3ad6e119a5ad8d5ee7ef5c`  
		Last Modified: Tue, 27 Oct 2026 00:49:20 GMT  
		Size: 17.9 MB (17916313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29db42d40590a222cc262b1626af822fd812fdc4e563b33268efbc8db3616610`  
		Last Modified: Tue, 27 Oct 2026 00:49:20 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9de7c815e1a38039f08e03226aff19417a15fc465f6a16def2d47f3d3ac6f25`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1ed944ecf34ee83ca0210e6a83ded9ace08917d5a7784d835655470b89d5e006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce7625321e6d95dc9d49d905001ec9f5dd81dd017a9df8f9dada46e8e140f53`

```dockerfile
```

-	Layers:
	-	`sha256:950a8ff205bcf35767fee5df85c147e8b91a0d53fee3fa89bb8eeee303ec67f9`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 2.7 MB (2735938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f718af9b321a6f277dd4cdfb2eab8f32c54ba6409849be2da5da06f3da7a8ff`  
		Last Modified: Tue, 27 Oct 2026 00:49:19 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:baf3374e899f5910a7e37291849bf8afb6dc5d81db1a0f21879805d844662541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200559707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a536f4cae991f86032e685a00408b60e3089a62fbe47cc1567c94ed1dd48860`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:16:34 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:20:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:20:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:20:40 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:20:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:20:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:20:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:20:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2926686766373825eba811064fc02285b5ad3e9f6c83d1eca7fe749234f6c5f`  
		Last Modified: Wed, 21 Oct 2026 10:22:02 GMT  
		Size: 18.3 MB (18279327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2b02dcb4f9df9cd95552adb948e4186d3874f4d5460650a837d5bcdd6e5022`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39a5c73b6cbe10daf40d9b02995f0baaf9d29477628af1ec3c40bfbcc06bd83`  
		Last Modified: Wed, 21 Oct 2026 10:22:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8a988269add68abe343615621b4b6e6a133613e3980d711b7106d10eaa62928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35d8b393f5a2175e7e5a3e158123e24fe50929a8bcb595b16e7868b9c365423`

```dockerfile
```

-	Layers:
	-	`sha256:a87c3b97ea9e3f4634fb94a00286c595ed04da4872cb3a371775faea2acd11c7`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 2.7 MB (2738156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd283fcbd952dbeb7958f5a045d9ffb68b31ad9ddae6cd2bf59f965fbd0d3bf6`  
		Last Modified: Wed, 21 Oct 2026 10:22:00 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
