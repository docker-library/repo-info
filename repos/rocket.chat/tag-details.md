<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:7`](#rocketchat7)
-	[`rocket.chat:7.10`](#rocketchat710)
-	[`rocket.chat:7.10.9`](#rocketchat7109)
-	[`rocket.chat:7.13`](#rocketchat713)
-	[`rocket.chat:7.13.9`](#rocketchat7139)
-	[`rocket.chat:8`](#rocketchat8)
-	[`rocket.chat:8.0`](#rocketchat80)
-	[`rocket.chat:8.0.7`](#rocketchat807)
-	[`rocket.chat:8.1`](#rocketchat81)
-	[`rocket.chat:8.1.6`](#rocketchat816)
-	[`rocket.chat:8.2`](#rocketchat82)
-	[`rocket.chat:8.2.6`](#rocketchat826)
-	[`rocket.chat:8.3`](#rocketchat83)
-	[`rocket.chat:8.3.6`](#rocketchat836)
-	[`rocket.chat:8.4`](#rocketchat84)
-	[`rocket.chat:8.4.4`](#rocketchat844)
-	[`rocket.chat:8.5`](#rocketchat85)
-	[`rocket.chat:8.5.1`](#rocketchat851)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:7`

```console
$ docker pull rocket.chat@sha256:095f5bbd94d060baaecb928cc04e1564dc3a1605559564fe72f9b43bd5402160
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7` - linux; amd64

```console
$ docker pull rocket.chat@sha256:2eaca18cc820040da27ffbed6619f684462d9b023cd656d04ba9bdefe83c4510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472209573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e385fc19a84489194d120c574900e728907a9fcaaf5706af7a809bff0a50e4c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:24 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:24 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:24 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:24 GMT
ENV RC_VERSION=7.13.9
# Wed, 29 Jul 2026 17:52:09 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:09 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:09 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:09 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:09 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1703597e17fcc52d3be4d321bb44669a411ccb85ce12877eba58932ef2567f`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 48.7 MB (48723872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857a4bb1fefea40cc82114521750826fadb018fb5c1fc6be745a0073575f17a`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887ce7858a95fec8cc3b2aefbc1f5782094346cd3ebc950f3c4b15b727f39fa1`  
		Last Modified: Wed, 29 Jul 2026 17:52:53 GMT  
		Size: 343.6 MB (343597658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:17f1ec8f8d9e2c819bf1d4b75756ee34c262f7bc7ea6179d47ed1941476248ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 KB (23365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e512a96f782230c8cd98d0c44eb87248e9f9414b0247f36b9ed8a4e5e7ead2`

```dockerfile
```

-	Layers:
	-	`sha256:251c40bd257cdef10bc80687aba4f577a2936047d7b8965666e5af89ad211b01`  
		Last Modified: Wed, 29 Jul 2026 17:52:47 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:7.10`

```console
$ docker pull rocket.chat@sha256:c52c6aefe8dce8ede16daa3d04a33868cc8feff04ddfbb5f0c0ae29995a3dfb6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7.10` - linux; amd64

```console
$ docker pull rocket.chat@sha256:ece56ddd26038248e2ae8047f100beab5612682c1bdcae3c445bf89c36067c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.4 MB (472421830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b04cd677fbf1f806a9d9d3dbcdda58deb1b9c14357c982ab4f12deb4109165`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:29 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:29 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:29 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:29 GMT
ENV RC_VERSION=7.10.9
# Wed, 29 Jul 2026 17:52:19 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:19 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:20 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:20 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:20 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:20 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963929a834347e430e087ad9118e4ffff2712ba9ae5285d9fee23e4620a1907e`  
		Last Modified: Wed, 29 Jul 2026 17:51:10 GMT  
		Size: 48.7 MB (48723844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8fe537330f116ff1994b7571fcdcde3c6de60f6db94a0ee220bacc138520da8`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295988e0d4b9590a808541471542ba1dfc6e3d06b1aabd37770f1acb28023382`  
		Last Modified: Wed, 29 Jul 2026 17:53:09 GMT  
		Size: 343.8 MB (343809944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7.10` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:590da12ad41ae7457f332920c98d0472b049896ccce9da2122e3192f52575572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29f42f1797f9d3fc71c06e5bd334ca98d74219b168b10f3c48d16b91b5e4f05`

```dockerfile
```

-	Layers:
	-	`sha256:58c76846ff413c6ed7089fc6eab15d0fac6da5287ea7f599eab301f7321e534c`  
		Last Modified: Wed, 29 Jul 2026 17:53:02 GMT  
		Size: 23.1 KB (23067 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:7.10.9`

```console
$ docker pull rocket.chat@sha256:c52c6aefe8dce8ede16daa3d04a33868cc8feff04ddfbb5f0c0ae29995a3dfb6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7.10.9` - linux; amd64

```console
$ docker pull rocket.chat@sha256:ece56ddd26038248e2ae8047f100beab5612682c1bdcae3c445bf89c36067c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.4 MB (472421830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b04cd677fbf1f806a9d9d3dbcdda58deb1b9c14357c982ab4f12deb4109165`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:29 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:29 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:29 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:29 GMT
ENV RC_VERSION=7.10.9
# Wed, 29 Jul 2026 17:52:19 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:19 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:20 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:20 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:20 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:20 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963929a834347e430e087ad9118e4ffff2712ba9ae5285d9fee23e4620a1907e`  
		Last Modified: Wed, 29 Jul 2026 17:51:10 GMT  
		Size: 48.7 MB (48723844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8fe537330f116ff1994b7571fcdcde3c6de60f6db94a0ee220bacc138520da8`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295988e0d4b9590a808541471542ba1dfc6e3d06b1aabd37770f1acb28023382`  
		Last Modified: Wed, 29 Jul 2026 17:53:09 GMT  
		Size: 343.8 MB (343809944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7.10.9` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:590da12ad41ae7457f332920c98d0472b049896ccce9da2122e3192f52575572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29f42f1797f9d3fc71c06e5bd334ca98d74219b168b10f3c48d16b91b5e4f05`

```dockerfile
```

-	Layers:
	-	`sha256:58c76846ff413c6ed7089fc6eab15d0fac6da5287ea7f599eab301f7321e534c`  
		Last Modified: Wed, 29 Jul 2026 17:53:02 GMT  
		Size: 23.1 KB (23067 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:7.13`

```console
$ docker pull rocket.chat@sha256:095f5bbd94d060baaecb928cc04e1564dc3a1605559564fe72f9b43bd5402160
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7.13` - linux; amd64

```console
$ docker pull rocket.chat@sha256:2eaca18cc820040da27ffbed6619f684462d9b023cd656d04ba9bdefe83c4510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472209573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e385fc19a84489194d120c574900e728907a9fcaaf5706af7a809bff0a50e4c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:24 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:24 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:24 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:24 GMT
ENV RC_VERSION=7.13.9
# Wed, 29 Jul 2026 17:52:09 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:09 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:09 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:09 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:09 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1703597e17fcc52d3be4d321bb44669a411ccb85ce12877eba58932ef2567f`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 48.7 MB (48723872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857a4bb1fefea40cc82114521750826fadb018fb5c1fc6be745a0073575f17a`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887ce7858a95fec8cc3b2aefbc1f5782094346cd3ebc950f3c4b15b727f39fa1`  
		Last Modified: Wed, 29 Jul 2026 17:52:53 GMT  
		Size: 343.6 MB (343597658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7.13` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:17f1ec8f8d9e2c819bf1d4b75756ee34c262f7bc7ea6179d47ed1941476248ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 KB (23365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e512a96f782230c8cd98d0c44eb87248e9f9414b0247f36b9ed8a4e5e7ead2`

```dockerfile
```

-	Layers:
	-	`sha256:251c40bd257cdef10bc80687aba4f577a2936047d7b8965666e5af89ad211b01`  
		Last Modified: Wed, 29 Jul 2026 17:52:47 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:7.13.9`

```console
$ docker pull rocket.chat@sha256:095f5bbd94d060baaecb928cc04e1564dc3a1605559564fe72f9b43bd5402160
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7.13.9` - linux; amd64

```console
$ docker pull rocket.chat@sha256:2eaca18cc820040da27ffbed6619f684462d9b023cd656d04ba9bdefe83c4510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472209573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e385fc19a84489194d120c574900e728907a9fcaaf5706af7a809bff0a50e4c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:24 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:24 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:24 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:24 GMT
ENV RC_VERSION=7.13.9
# Wed, 29 Jul 2026 17:52:09 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:09 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:09 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:09 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:09 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:09 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1703597e17fcc52d3be4d321bb44669a411ccb85ce12877eba58932ef2567f`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 48.7 MB (48723872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857a4bb1fefea40cc82114521750826fadb018fb5c1fc6be745a0073575f17a`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887ce7858a95fec8cc3b2aefbc1f5782094346cd3ebc950f3c4b15b727f39fa1`  
		Last Modified: Wed, 29 Jul 2026 17:52:53 GMT  
		Size: 343.6 MB (343597658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7.13.9` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:17f1ec8f8d9e2c819bf1d4b75756ee34c262f7bc7ea6179d47ed1941476248ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 KB (23365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e512a96f782230c8cd98d0c44eb87248e9f9414b0247f36b9ed8a4e5e7ead2`

```dockerfile
```

-	Layers:
	-	`sha256:251c40bd257cdef10bc80687aba4f577a2936047d7b8965666e5af89ad211b01`  
		Last Modified: Wed, 29 Jul 2026 17:52:47 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8`

```console
$ docker pull rocket.chat@sha256:de6ce347eed91ce4979ccb454cec83cce463017790f4d7093e0d20221baa17a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8` - linux; amd64

```console
$ docker pull rocket.chat@sha256:78fba9d07c6df4df8f03e5ab93872182269f866302605e58bef500639b948ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.6 MB (417589704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7fad0e894b36c5ea97cf0314cecd661cd15caf866463608b8346e81b82ef5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:11 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:12 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:12 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:12 GMT
ENV RC_VERSION=8.5.1
# Wed, 29 Jul 2026 17:50:04 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:04 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:05 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:05 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:05 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:05 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f178fb2fb07484da94a3e2d6aefb959e5ab516208bb9d410189e748a8be749b6`  
		Last Modified: Wed, 29 Jul 2026 17:50:44 GMT  
		Size: 48.7 MB (48723842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76dbfa4a0ca4f33ff1ec112eb4b3012c0703990369a1bd97952afe6192e508`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfef016291ad74f970c24ad89659a5498f4bdda4d9def1f85f490a10baf3cd90`  
		Last Modified: Wed, 29 Jul 2026 17:50:52 GMT  
		Size: 289.0 MB (288977817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:dfebd4bab584b68a2d782d4eefe4696f63111b6eefc3803da4899d2ba4ddc839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 KB (23665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc45b77f5ba5820acc8a926a7f6ce0afccbc697081ede4254beaa9458e29ce`

```dockerfile
```

-	Layers:
	-	`sha256:f99f420643f6a7f6e1a3ad29d87850c8f6a41bf1c4f1d138967fcb9dc90c064b`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 23.7 KB (23665 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.0`

```console
$ docker pull rocket.chat@sha256:53361e5dddf2a98ba7c7444e387a608d6d507754d65c00c6be3886e8ac6c7478
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.0` - linux; amd64

```console
$ docker pull rocket.chat@sha256:dd5538043acf0788c6a435546bb3e513e0e44d5d2fb7cc960f6918e8fef89212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.6 MB (458550898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea0e7c80e4f922defefd0d25126791ff13117a6cccbb8c75b237768193550082`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:25 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:25 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:25 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:25 GMT
ENV RC_VERSION=8.0.7
# Wed, 29 Jul 2026 17:52:13 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:13 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:14 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:14 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:14 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:14 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e71ee6fcbce27543bd503d88270ff773e9a810309d6c3e61c3c91ecce61229b`  
		Last Modified: Wed, 29 Jul 2026 17:50:59 GMT  
		Size: 48.7 MB (48723821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c67f43d62eb75918240d4be3f571db6c1a2fa6d27653f2abf246e6fa2493a70`  
		Last Modified: Wed, 29 Jul 2026 17:50:57 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcc0e9f7a8f85cec5709d88c77e25af82c9cf29122983ed608ca94e195442c8`  
		Last Modified: Wed, 29 Jul 2026 17:52:58 GMT  
		Size: 329.9 MB (329939034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.0` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:78cb2da006e7bd68a76467e60b8ac2d1f72927df63f8c10afa10069d85fb2e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ca77074a54512f3f2fc96a40281e4db38b96ce497481015fa1c79d7e52b765`

```dockerfile
```

-	Layers:
	-	`sha256:4629320e8bf2d0b081d69bf43c496ea56cbfb6386f2ac693cce67467817061b7`  
		Last Modified: Wed, 29 Jul 2026 17:52:51 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.0.7`

```console
$ docker pull rocket.chat@sha256:53361e5dddf2a98ba7c7444e387a608d6d507754d65c00c6be3886e8ac6c7478
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.0.7` - linux; amd64

```console
$ docker pull rocket.chat@sha256:dd5538043acf0788c6a435546bb3e513e0e44d5d2fb7cc960f6918e8fef89212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **458.6 MB (458550898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea0e7c80e4f922defefd0d25126791ff13117a6cccbb8c75b237768193550082`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:25 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:25 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:25 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:25 GMT
ENV RC_VERSION=8.0.7
# Wed, 29 Jul 2026 17:52:13 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:52:13 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:52:14 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:52:14 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:52:14 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:52:14 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e71ee6fcbce27543bd503d88270ff773e9a810309d6c3e61c3c91ecce61229b`  
		Last Modified: Wed, 29 Jul 2026 17:50:59 GMT  
		Size: 48.7 MB (48723821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c67f43d62eb75918240d4be3f571db6c1a2fa6d27653f2abf246e6fa2493a70`  
		Last Modified: Wed, 29 Jul 2026 17:50:57 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcc0e9f7a8f85cec5709d88c77e25af82c9cf29122983ed608ca94e195442c8`  
		Last Modified: Wed, 29 Jul 2026 17:52:58 GMT  
		Size: 329.9 MB (329939034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.0.7` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:78cb2da006e7bd68a76467e60b8ac2d1f72927df63f8c10afa10069d85fb2e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ca77074a54512f3f2fc96a40281e4db38b96ce497481015fa1c79d7e52b765`

```dockerfile
```

-	Layers:
	-	`sha256:4629320e8bf2d0b081d69bf43c496ea56cbfb6386f2ac693cce67467817061b7`  
		Last Modified: Wed, 29 Jul 2026 17:52:51 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.1`

```console
$ docker pull rocket.chat@sha256:446c1c9f788fdddd2f94a0036fcc8460aa8fc487ea1efb1a5b44c942655d2eb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.1` - linux; amd64

```console
$ docker pull rocket.chat@sha256:c1c5cb8a6f3dbfc78eb1d25e211c6e2c73b3524d092c5ac7cf38cda1c4b2f1c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459154890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c32a6359388cbb672912bb7cbaa9674f05d92619a58f371233697197985ef28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:11 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:12 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:12 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:12 GMT
ENV RC_VERSION=8.1.6
# Wed, 29 Jul 2026 17:51:50 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:51:50 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:51:51 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:51:51 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:51:51 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:51:51 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f178fb2fb07484da94a3e2d6aefb959e5ab516208bb9d410189e748a8be749b6`  
		Last Modified: Wed, 29 Jul 2026 17:50:44 GMT  
		Size: 48.7 MB (48723842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76dbfa4a0ca4f33ff1ec112eb4b3012c0703990369a1bd97952afe6192e508`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43448ec0bd67bbd5db0c256fc65b70fe889dd841ab3b75815a5218f8772fafcd`  
		Last Modified: Wed, 29 Jul 2026 17:52:39 GMT  
		Size: 330.5 MB (330543003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.1` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:a9c3bbd6552fc49000c58fc77c3b3d84df73c38713063f703bcd413f3b3f4ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a2922c08b332d6867f39ed6aae704c86c44a52f01e5767243557a5b5e5806b`

```dockerfile
```

-	Layers:
	-	`sha256:9e04851dd3c77b371f179e6e4ad6a1e09fc606a14a8341de0aa8e2962c094468`  
		Last Modified: Wed, 29 Jul 2026 17:52:33 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.1.6`

```console
$ docker pull rocket.chat@sha256:446c1c9f788fdddd2f94a0036fcc8460aa8fc487ea1efb1a5b44c942655d2eb3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.1.6` - linux; amd64

```console
$ docker pull rocket.chat@sha256:c1c5cb8a6f3dbfc78eb1d25e211c6e2c73b3524d092c5ac7cf38cda1c4b2f1c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **459.2 MB (459154890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c32a6359388cbb672912bb7cbaa9674f05d92619a58f371233697197985ef28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:11 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:12 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:12 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:12 GMT
ENV RC_VERSION=8.1.6
# Wed, 29 Jul 2026 17:51:50 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:51:50 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:51:51 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:51:51 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:51:51 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:51:51 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f178fb2fb07484da94a3e2d6aefb959e5ab516208bb9d410189e748a8be749b6`  
		Last Modified: Wed, 29 Jul 2026 17:50:44 GMT  
		Size: 48.7 MB (48723842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76dbfa4a0ca4f33ff1ec112eb4b3012c0703990369a1bd97952afe6192e508`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43448ec0bd67bbd5db0c256fc65b70fe889dd841ab3b75815a5218f8772fafcd`  
		Last Modified: Wed, 29 Jul 2026 17:52:39 GMT  
		Size: 330.5 MB (330543003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.1.6` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:a9c3bbd6552fc49000c58fc77c3b3d84df73c38713063f703bcd413f3b3f4ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a2922c08b332d6867f39ed6aae704c86c44a52f01e5767243557a5b5e5806b`

```dockerfile
```

-	Layers:
	-	`sha256:9e04851dd3c77b371f179e6e4ad6a1e09fc606a14a8341de0aa8e2962c094468`  
		Last Modified: Wed, 29 Jul 2026 17:52:33 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.2`

```console
$ docker pull rocket.chat@sha256:a72d31320f5f7a4d352553f4e7e157e67160ed2f204c339cb6fd491c7454e528
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.2` - linux; amd64

```console
$ docker pull rocket.chat@sha256:18e9b32592bd8775e7074be665fd50496efed2587226e77a1e54ce5987845bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474770266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdb0bd1de5edb0de226c9ce5c032d8d8ed8c58f7a0ea7223f5388d0d88b8f4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:29 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:29 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:29 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:29 GMT
ENV RC_VERSION=8.2.6
# Wed, 29 Jul 2026 17:50:24 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:24 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:25 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:25 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:25 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:25 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963929a834347e430e087ad9118e4ffff2712ba9ae5285d9fee23e4620a1907e`  
		Last Modified: Wed, 29 Jul 2026 17:51:10 GMT  
		Size: 48.7 MB (48723844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8fe537330f116ff1994b7571fcdcde3c6de60f6db94a0ee220bacc138520da8`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad14d7806bbf25177482f46b92b9bd81600c47e3bc73d01f3532de189d98496a`  
		Last Modified: Wed, 29 Jul 2026 17:51:16 GMT  
		Size: 346.2 MB (346158380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.2` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:46d881c0388ee082beb82bff7ef39d155e8280681b7efafe4caac5c1b393bea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7ad3c43e70942717a8e9c6150cc53216579247fa2d501ecdfa32d395438eee`

```dockerfile
```

-	Layers:
	-	`sha256:724374f4ca3cc9482292fb6fe845295a89eda36f4b069f1143dac3611ab69c9c`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 23.1 KB (23059 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.2.6`

```console
$ docker pull rocket.chat@sha256:a72d31320f5f7a4d352553f4e7e157e67160ed2f204c339cb6fd491c7454e528
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.2.6` - linux; amd64

```console
$ docker pull rocket.chat@sha256:18e9b32592bd8775e7074be665fd50496efed2587226e77a1e54ce5987845bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474770266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdb0bd1de5edb0de226c9ce5c032d8d8ed8c58f7a0ea7223f5388d0d88b8f4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:29 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:29 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:29 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:29 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:29 GMT
ENV RC_VERSION=8.2.6
# Wed, 29 Jul 2026 17:50:24 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:24 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:25 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:25 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:25 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:25 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963929a834347e430e087ad9118e4ffff2712ba9ae5285d9fee23e4620a1907e`  
		Last Modified: Wed, 29 Jul 2026 17:51:10 GMT  
		Size: 48.7 MB (48723844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8fe537330f116ff1994b7571fcdcde3c6de60f6db94a0ee220bacc138520da8`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad14d7806bbf25177482f46b92b9bd81600c47e3bc73d01f3532de189d98496a`  
		Last Modified: Wed, 29 Jul 2026 17:51:16 GMT  
		Size: 346.2 MB (346158380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.2.6` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:46d881c0388ee082beb82bff7ef39d155e8280681b7efafe4caac5c1b393bea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7ad3c43e70942717a8e9c6150cc53216579247fa2d501ecdfa32d395438eee`

```dockerfile
```

-	Layers:
	-	`sha256:724374f4ca3cc9482292fb6fe845295a89eda36f4b069f1143dac3611ab69c9c`  
		Last Modified: Wed, 29 Jul 2026 17:51:08 GMT  
		Size: 23.1 KB (23059 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.3`

```console
$ docker pull rocket.chat@sha256:a4d32732f8ddbc6a2520bfc0b627fb803cdb8740879d1d14a19ffd78948c8e40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.3` - linux; amd64

```console
$ docker pull rocket.chat@sha256:cea334bbbe2e8c720ce69e176e30afaf9c0546a5316207ec93e617ad05ba0072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.4 MB (531395442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec16b37426e414e7d3294fc10defaeba540545bc647a81b37e41286894dbd27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:24 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:24 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:24 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:24 GMT
ENV RC_VERSION=8.3.6
# Wed, 29 Jul 2026 17:50:24 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:24 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:24 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:24 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:24 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:24 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1703597e17fcc52d3be4d321bb44669a411ccb85ce12877eba58932ef2567f`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 48.7 MB (48723872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857a4bb1fefea40cc82114521750826fadb018fb5c1fc6be745a0073575f17a`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18937b134878ca9d8ffed1e34255fb78fc644eea864203825c923abfa8b3302`  
		Last Modified: Wed, 29 Jul 2026 17:51:15 GMT  
		Size: 402.8 MB (402783527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.3` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:be3f58c10bfd2dcb04a6a5ea51ce24d12a6fa5c91d24969ab83f097cc9282d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef677f3d1095b08ea09b42855da157e98ac86f45fe02f3b2e37f8447544f2f6`

```dockerfile
```

-	Layers:
	-	`sha256:e7be9c71ede4e958eb9005820289d4754b48d037807800a8b67c317c5a937f29`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.3.6`

```console
$ docker pull rocket.chat@sha256:a4d32732f8ddbc6a2520bfc0b627fb803cdb8740879d1d14a19ffd78948c8e40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.3.6` - linux; amd64

```console
$ docker pull rocket.chat@sha256:cea334bbbe2e8c720ce69e176e30afaf9c0546a5316207ec93e617ad05ba0072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.4 MB (531395442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec16b37426e414e7d3294fc10defaeba540545bc647a81b37e41286894dbd27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:24 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:24 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:24 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:24 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:24 GMT
ENV RC_VERSION=8.3.6
# Wed, 29 Jul 2026 17:50:24 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:24 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:24 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:24 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:24 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:24 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1703597e17fcc52d3be4d321bb44669a411ccb85ce12877eba58932ef2567f`  
		Last Modified: Wed, 29 Jul 2026 17:51:09 GMT  
		Size: 48.7 MB (48723872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e857a4bb1fefea40cc82114521750826fadb018fb5c1fc6be745a0073575f17a`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18937b134878ca9d8ffed1e34255fb78fc644eea864203825c923abfa8b3302`  
		Last Modified: Wed, 29 Jul 2026 17:51:15 GMT  
		Size: 402.8 MB (402783527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.3.6` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:be3f58c10bfd2dcb04a6a5ea51ce24d12a6fa5c91d24969ab83f097cc9282d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef677f3d1095b08ea09b42855da157e98ac86f45fe02f3b2e37f8447544f2f6`

```dockerfile
```

-	Layers:
	-	`sha256:e7be9c71ede4e958eb9005820289d4754b48d037807800a8b67c317c5a937f29`  
		Last Modified: Wed, 29 Jul 2026 17:51:07 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.4`

```console
$ docker pull rocket.chat@sha256:c6f1bf4a2c2e40112fed8ca3e89fbe80a1cc881d1e467321a25bcf3d21d0414b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.4` - linux; amd64

```console
$ docker pull rocket.chat@sha256:021583b9b363e9e48ea0ee606e70000ca90194256edd150b8eb66aac8c25a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.6 MB (413555620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fba0a065d719a488b92b0d62befdc9ab0f1df42332e198e8878618f61000b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:25 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:25 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:25 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:25 GMT
ENV RC_VERSION=8.4.4
# Wed, 29 Jul 2026 17:50:20 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:20 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:21 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:21 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:21 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:21 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e71ee6fcbce27543bd503d88270ff773e9a810309d6c3e61c3c91ecce61229b`  
		Last Modified: Wed, 29 Jul 2026 17:50:59 GMT  
		Size: 48.7 MB (48723821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c67f43d62eb75918240d4be3f571db6c1a2fa6d27653f2abf246e6fa2493a70`  
		Last Modified: Wed, 29 Jul 2026 17:50:57 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c992e304db95dc8d9d4d28626457c7d3b061cab910e60d969b9b69aec71d9a0`  
		Last Modified: Wed, 29 Jul 2026 17:51:03 GMT  
		Size: 284.9 MB (284943756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.4` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:fc1f2c6a0452b725dc4dd2a05b7317cc5dbdd9db72e430b59209a88f64b09e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13631a0ae9089729efc712f3211931055bbb58f6c25e191079ea05ab0e27b783`

```dockerfile
```

-	Layers:
	-	`sha256:0ccf913c3690b37d5070d1b820c4740054d027bb027be82003bc960dbb86e462`  
		Last Modified: Wed, 29 Jul 2026 17:50:57 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.4.4`

```console
$ docker pull rocket.chat@sha256:c6f1bf4a2c2e40112fed8ca3e89fbe80a1cc881d1e467321a25bcf3d21d0414b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.4.4` - linux; amd64

```console
$ docker pull rocket.chat@sha256:021583b9b363e9e48ea0ee606e70000ca90194256edd150b8eb66aac8c25a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.6 MB (413555620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fba0a065d719a488b92b0d62befdc9ab0f1df42332e198e8878618f61000b98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:25 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:25 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:25 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:25 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:25 GMT
ENV RC_VERSION=8.4.4
# Wed, 29 Jul 2026 17:50:20 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:20 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:21 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:21 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:21 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:21 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e71ee6fcbce27543bd503d88270ff773e9a810309d6c3e61c3c91ecce61229b`  
		Last Modified: Wed, 29 Jul 2026 17:50:59 GMT  
		Size: 48.7 MB (48723821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c67f43d62eb75918240d4be3f571db6c1a2fa6d27653f2abf246e6fa2493a70`  
		Last Modified: Wed, 29 Jul 2026 17:50:57 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c992e304db95dc8d9d4d28626457c7d3b061cab910e60d969b9b69aec71d9a0`  
		Last Modified: Wed, 29 Jul 2026 17:51:03 GMT  
		Size: 284.9 MB (284943756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.4.4` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:fc1f2c6a0452b725dc4dd2a05b7317cc5dbdd9db72e430b59209a88f64b09e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 KB (23060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13631a0ae9089729efc712f3211931055bbb58f6c25e191079ea05ab0e27b783`

```dockerfile
```

-	Layers:
	-	`sha256:0ccf913c3690b37d5070d1b820c4740054d027bb027be82003bc960dbb86e462`  
		Last Modified: Wed, 29 Jul 2026 17:50:57 GMT  
		Size: 23.1 KB (23060 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.5`

```console
$ docker pull rocket.chat@sha256:de6ce347eed91ce4979ccb454cec83cce463017790f4d7093e0d20221baa17a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.5` - linux; amd64

```console
$ docker pull rocket.chat@sha256:78fba9d07c6df4df8f03e5ab93872182269f866302605e58bef500639b948ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.6 MB (417589704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7fad0e894b36c5ea97cf0314cecd661cd15caf866463608b8346e81b82ef5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:11 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:12 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:12 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:12 GMT
ENV RC_VERSION=8.5.1
# Wed, 29 Jul 2026 17:50:04 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:04 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:05 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:05 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:05 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:05 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f178fb2fb07484da94a3e2d6aefb959e5ab516208bb9d410189e748a8be749b6`  
		Last Modified: Wed, 29 Jul 2026 17:50:44 GMT  
		Size: 48.7 MB (48723842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76dbfa4a0ca4f33ff1ec112eb4b3012c0703990369a1bd97952afe6192e508`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfef016291ad74f970c24ad89659a5498f4bdda4d9def1f85f490a10baf3cd90`  
		Last Modified: Wed, 29 Jul 2026 17:50:52 GMT  
		Size: 289.0 MB (288977817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.5` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:dfebd4bab584b68a2d782d4eefe4696f63111b6eefc3803da4899d2ba4ddc839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 KB (23665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc45b77f5ba5820acc8a926a7f6ce0afccbc697081ede4254beaa9458e29ce`

```dockerfile
```

-	Layers:
	-	`sha256:f99f420643f6a7f6e1a3ad29d87850c8f6a41bf1c4f1d138967fcb9dc90c064b`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 23.7 KB (23665 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.5.1`

```console
$ docker pull rocket.chat@sha256:de6ce347eed91ce4979ccb454cec83cce463017790f4d7093e0d20221baa17a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.5.1` - linux; amd64

```console
$ docker pull rocket.chat@sha256:78fba9d07c6df4df8f03e5ab93872182269f866302605e58bef500639b948ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.6 MB (417589704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7fad0e894b36c5ea97cf0314cecd661cd15caf866463608b8346e81b82ef5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:11 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:12 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:12 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:12 GMT
ENV RC_VERSION=8.5.1
# Wed, 29 Jul 2026 17:50:04 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:04 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:05 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:05 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:05 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:05 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f178fb2fb07484da94a3e2d6aefb959e5ab516208bb9d410189e748a8be749b6`  
		Last Modified: Wed, 29 Jul 2026 17:50:44 GMT  
		Size: 48.7 MB (48723842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76dbfa4a0ca4f33ff1ec112eb4b3012c0703990369a1bd97952afe6192e508`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfef016291ad74f970c24ad89659a5498f4bdda4d9def1f85f490a10baf3cd90`  
		Last Modified: Wed, 29 Jul 2026 17:50:52 GMT  
		Size: 289.0 MB (288977817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.5.1` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:dfebd4bab584b68a2d782d4eefe4696f63111b6eefc3803da4899d2ba4ddc839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 KB (23665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc45b77f5ba5820acc8a926a7f6ce0afccbc697081ede4254beaa9458e29ce`

```dockerfile
```

-	Layers:
	-	`sha256:f99f420643f6a7f6e1a3ad29d87850c8f6a41bf1c4f1d138967fcb9dc90c064b`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 23.7 KB (23665 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:de6ce347eed91ce4979ccb454cec83cce463017790f4d7093e0d20221baa17a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:78fba9d07c6df4df8f03e5ab93872182269f866302605e58bef500639b948ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.6 MB (417589704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7fad0e894b36c5ea97cf0314cecd661cd15caf866463608b8346e81b82ef5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:27:30 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV NODE_VERSION=22.23.2
# Wed, 29 Jul 2026 17:27:51 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:27:51 GMT
ENV YARN_VERSION=1.22.22
# Wed, 29 Jul 2026 17:28:05 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:28:05 GMT
CMD ["node"]
# Wed, 29 Jul 2026 17:49:11 GMT
ENV DENO_VERSION=1.43.5
# Wed, 29 Jul 2026 17:49:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)"   && case "${dpkgArch##*-}" in   amd64) ARCH='x86_64';;   arm64) ARCH='aarch64';;   *) echo "unsupported Deno architecture"; exit 1 ;;   esac   && set -ex   && apt-get update && apt-get install -y --no-install-recommends ca-certificates curl unzip && rm -rf /var/lib/apt/lists/*   && curl -fsSL https://dl.deno.land/release/v${DENO_VERSION}/deno-${ARCH}-unknown-linux-gnu.zip --output /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && echo "246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d /tmp/deno-x86_64-unknown-linux-gnu.zip" | sha256sum -c -   && unzip /tmp/deno-${ARCH}-unknown-linux-gnu.zip -d /tmp   && rm /tmp/deno-${ARCH}-unknown-linux-gnu.zip   && chmod 755 /tmp/deno   && mv /tmp/deno /usr/local/bin/deno   && apt-mark auto '.*' > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Wed, 29 Jul 2026 17:49:12 GMT
VOLUME [/app/uploads]
# Wed, 29 Jul 2026 17:49:12 GMT
WORKDIR /app
# Wed, 29 Jul 2026 17:49:12 GMT
ENV NODE_ENV=production
# Wed, 29 Jul 2026 17:49:12 GMT
ENV RC_VERSION=8.5.1
# Wed, 29 Jul 2026 17:50:04 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Wed, 29 Jul 2026 17:50:04 GMT
USER rocketchat
# Wed, 29 Jul 2026 17:50:05 GMT
WORKDIR /app/bundle
# Wed, 29 Jul 2026 17:50:05 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Wed, 29 Jul 2026 17:50:05 GMT
EXPOSE map[3000/tcp:{}]
# Wed, 29 Jul 2026 17:50:05 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973430fa345599cc6339b41994b6016b7c640565c4c9fc38cb95b076270c1364`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819702822a00f39d3fe1d6d8281f437308333869d3d5f03c26136fa8e5decdf`  
		Last Modified: Wed, 29 Jul 2026 17:28:21 GMT  
		Size: 49.9 MB (49937725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea6725c9a722857f3c3309961c0905b9166ac86b90c61884007de4ea4ee8286`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 1.7 MB (1712678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3035b94809cf6c73290971d63b090072be5a42b106d2dde4d72b877e70a60d57`  
		Last Modified: Wed, 29 Jul 2026 17:28:20 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f178fb2fb07484da94a3e2d6aefb959e5ab516208bb9d410189e748a8be749b6`  
		Last Modified: Wed, 29 Jul 2026 17:50:44 GMT  
		Size: 48.7 MB (48723842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76dbfa4a0ca4f33ff1ec112eb4b3012c0703990369a1bd97952afe6192e508`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfef016291ad74f970c24ad89659a5498f4bdda4d9def1f85f490a10baf3cd90`  
		Last Modified: Wed, 29 Jul 2026 17:50:52 GMT  
		Size: 289.0 MB (288977817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:latest` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:dfebd4bab584b68a2d782d4eefe4696f63111b6eefc3803da4899d2ba4ddc839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 KB (23665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cc45b77f5ba5820acc8a926a7f6ce0afccbc697081ede4254beaa9458e29ce`

```dockerfile
```

-	Layers:
	-	`sha256:f99f420643f6a7f6e1a3ad29d87850c8f6a41bf1c4f1d138967fcb9dc90c064b`  
		Last Modified: Wed, 29 Jul 2026 17:50:41 GMT  
		Size: 23.7 KB (23665 bytes)  
		MIME: application/vnd.in-toto+json
