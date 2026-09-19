<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rocket.chat`

-	[`rocket.chat:7.10`](#rocketchat710)
-	[`rocket.chat:7.10.15`](#rocketchat71015)
-	[`rocket.chat:8.2`](#rocketchat82)
-	[`rocket.chat:8.2.8`](#rocketchat828)
-	[`rocket.chat:8.3`](#rocketchat83)
-	[`rocket.chat:8.3.8`](#rocketchat838)
-	[`rocket.chat:8.4`](#rocketchat84)
-	[`rocket.chat:8.4.6`](#rocketchat846)
-	[`rocket.chat:8.5`](#rocketchat85)
-	[`rocket.chat:8.5.3`](#rocketchat853)
-	[`rocket.chat:8.6`](#rocketchat86)
-	[`rocket.chat:8.6.2`](#rocketchat862)
-	[`rocket.chat:8.7`](#rocketchat87)
-	[`rocket.chat:8.7.1`](#rocketchat871)
-	[`rocket.chat:8.8`](#rocketchat88)
-	[`rocket.chat:8.8.1`](#rocketchat881)
-	[`rocket.chat:latest`](#rocketchatlatest)

## `rocket.chat:7.10`

```console
$ docker pull rocket.chat@sha256:a8e810bb0fa1519d8b8d81b43d42742f901667753ee82901b57fc965f71591cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7.10` - linux; amd64

```console
$ docker pull rocket.chat@sha256:f1c002617b19aa8ea8bc7bf39a2f1952e204432d9977280e523674f764251ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472521280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ac76830469e8e57db8f64efed0dc463dc1aaeb3b439b70010f71c991b141ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:38:46 GMT
ENV DENO_VERSION=1.43.5
# Sat, 19 Sep 2026 01:38:46 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3335cd10a3c17afa5a44fc79484cd3471ca151afa5d9ba6080e55a7faa7dafb5';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:38:46 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:38:46 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:38:46 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:38:46 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:38:46 GMT
ENV RC_VERSION=7.10.15
# Sat, 19 Sep 2026 01:39:44 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:39:44 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:39:45 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:39:45 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:39:45 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:39:45 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ad22b2f66294ddb336299e7ffa0aece844558a70403a5bdbb6460a850ab22`  
		Last Modified: Sat, 19 Sep 2026 01:40:29 GMT  
		Size: 48.7 MB (48724276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2ea2fd6c3217de26b622a2e83a69fa8185f0660d427a0e436e6db6d5bc2675`  
		Last Modified: Sat, 19 Sep 2026 01:40:27 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8b432de47c86b3e3e8932c3a150ac9bc65f293890ba02c8af18cb67471f58f`  
		Last Modified: Sat, 19 Sep 2026 01:40:35 GMT  
		Size: 343.9 MB (343902321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7.10` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:abab94d285f9f1ea289aca94ed43cf78f4569a16f04c533a8ec3a9b5fbe5aa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8bf16e139d92384edf6dc555544ac6daf1489aeb707135b8a9ecd44ac6eae8`

```dockerfile
```

-	Layers:
	-	`sha256:5ff5eb2601e4dc2c5bc17d0a0a42fd0404bfc86be53fe4c2fe507fd26a318400`  
		Last Modified: Sat, 19 Sep 2026 01:40:27 GMT  
		Size: 23.5 KB (23477 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:7.10.15`

```console
$ docker pull rocket.chat@sha256:a8e810bb0fa1519d8b8d81b43d42742f901667753ee82901b57fc965f71591cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:7.10.15` - linux; amd64

```console
$ docker pull rocket.chat@sha256:f1c002617b19aa8ea8bc7bf39a2f1952e204432d9977280e523674f764251ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472521280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25ac76830469e8e57db8f64efed0dc463dc1aaeb3b439b70010f71c991b141ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:38:46 GMT
ENV DENO_VERSION=1.43.5
# Sat, 19 Sep 2026 01:38:46 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3335cd10a3c17afa5a44fc79484cd3471ca151afa5d9ba6080e55a7faa7dafb5';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:38:46 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:38:46 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:38:46 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:38:46 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:38:46 GMT
ENV RC_VERSION=7.10.15
# Sat, 19 Sep 2026 01:39:44 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:39:44 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:39:45 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:39:45 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:39:45 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:39:45 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500ad22b2f66294ddb336299e7ffa0aece844558a70403a5bdbb6460a850ab22`  
		Last Modified: Sat, 19 Sep 2026 01:40:29 GMT  
		Size: 48.7 MB (48724276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2ea2fd6c3217de26b622a2e83a69fa8185f0660d427a0e436e6db6d5bc2675`  
		Last Modified: Sat, 19 Sep 2026 01:40:27 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8b432de47c86b3e3e8932c3a150ac9bc65f293890ba02c8af18cb67471f58f`  
		Last Modified: Sat, 19 Sep 2026 01:40:35 GMT  
		Size: 343.9 MB (343902321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:7.10.15` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:abab94d285f9f1ea289aca94ed43cf78f4569a16f04c533a8ec3a9b5fbe5aa2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8bf16e139d92384edf6dc555544ac6daf1489aeb707135b8a9ecd44ac6eae8`

```dockerfile
```

-	Layers:
	-	`sha256:5ff5eb2601e4dc2c5bc17d0a0a42fd0404bfc86be53fe4c2fe507fd26a318400`  
		Last Modified: Sat, 19 Sep 2026 01:40:27 GMT  
		Size: 23.5 KB (23477 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.2`

```console
$ docker pull rocket.chat@sha256:10f0c2273c12a25809224e65507f26b67ff2149ad0fd1f37deb771241bd050ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.2` - linux; amd64

```console
$ docker pull rocket.chat@sha256:edc35b6469c1d018f76e39b602b38c7a629c5faa6b6aa9e0c1915da4e38d1bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474807006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e0b5997e3990c2106c3481c313c895e83cc3a1f359f9336dffc4bd25083935`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:38:34 GMT
ENV DENO_VERSION=1.43.5
# Sat, 19 Sep 2026 01:38:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3335cd10a3c17afa5a44fc79484cd3471ca151afa5d9ba6080e55a7faa7dafb5';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:38:34 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:38:34 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:38:34 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:38:34 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:38:34 GMT
ENV RC_VERSION=8.2.8
# Sat, 19 Sep 2026 01:39:35 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:39:35 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:39:36 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:39:36 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:39:36 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:39:36 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a187345be91727c95a76ee3af534522079f7d8e8a3f8f41e1dd3688b669ac33`  
		Last Modified: Sat, 19 Sep 2026 01:40:21 GMT  
		Size: 48.7 MB (48724323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3ab355b850657e931a0ceb783cad3a8890a3003eee97c6e7de72c46eddddd1`  
		Last Modified: Sat, 19 Sep 2026 01:40:19 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f908e9147923332ab5a1d528c685247e3081c27610bc8b6b78d78a059f5e43e`  
		Last Modified: Sat, 19 Sep 2026 01:40:26 GMT  
		Size: 346.2 MB (346188001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.2` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:22f68161fd9c3555732b7d0ddf39eafe63b5eee209524cbe843119384e2b0193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a236b74be26009c16e58c6899167d29d0b886628f4cff5562a616b3f085a3f8d`

```dockerfile
```

-	Layers:
	-	`sha256:ef29b933d455e0d97db9f8cf2cd2698398ca4dbf8b34d8048923cc3bf81c9fb4`  
		Last Modified: Sat, 19 Sep 2026 01:40:19 GMT  
		Size: 23.5 KB (23467 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.2.8`

```console
$ docker pull rocket.chat@sha256:10f0c2273c12a25809224e65507f26b67ff2149ad0fd1f37deb771241bd050ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.2.8` - linux; amd64

```console
$ docker pull rocket.chat@sha256:edc35b6469c1d018f76e39b602b38c7a629c5faa6b6aa9e0c1915da4e38d1bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.8 MB (474807006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e0b5997e3990c2106c3481c313c895e83cc3a1f359f9336dffc4bd25083935`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:38:34 GMT
ENV DENO_VERSION=1.43.5
# Sat, 19 Sep 2026 01:38:34 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3335cd10a3c17afa5a44fc79484cd3471ca151afa5d9ba6080e55a7faa7dafb5';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:38:34 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:38:34 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:38:34 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:38:34 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:38:34 GMT
ENV RC_VERSION=8.2.8
# Sat, 19 Sep 2026 01:39:35 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:39:35 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:39:36 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:39:36 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:39:36 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:39:36 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a187345be91727c95a76ee3af534522079f7d8e8a3f8f41e1dd3688b669ac33`  
		Last Modified: Sat, 19 Sep 2026 01:40:21 GMT  
		Size: 48.7 MB (48724323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3ab355b850657e931a0ceb783cad3a8890a3003eee97c6e7de72c46eddddd1`  
		Last Modified: Sat, 19 Sep 2026 01:40:19 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f908e9147923332ab5a1d528c685247e3081c27610bc8b6b78d78a059f5e43e`  
		Last Modified: Sat, 19 Sep 2026 01:40:26 GMT  
		Size: 346.2 MB (346188001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.2.8` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:22f68161fd9c3555732b7d0ddf39eafe63b5eee209524cbe843119384e2b0193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a236b74be26009c16e58c6899167d29d0b886628f4cff5562a616b3f085a3f8d`

```dockerfile
```

-	Layers:
	-	`sha256:ef29b933d455e0d97db9f8cf2cd2698398ca4dbf8b34d8048923cc3bf81c9fb4`  
		Last Modified: Sat, 19 Sep 2026 01:40:19 GMT  
		Size: 23.5 KB (23467 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.3`

```console
$ docker pull rocket.chat@sha256:7aa880b9c544baed376a4a7639268c0fd3c3dad906ba07889cec18e4d8b7f315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.3` - linux; amd64

```console
$ docker pull rocket.chat@sha256:6eca3fe1b99f30691ddcb42637bfb8b7780fdb73c9ffc21aa5eb7824cd5a85d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531453879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6751e2f455de2eca1abb2dbb52a7e60c971b833dd314914e70dc6f2e5c089c99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:38:14 GMT
ENV DENO_VERSION=1.43.5
# Sat, 19 Sep 2026 01:38:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3335cd10a3c17afa5a44fc79484cd3471ca151afa5d9ba6080e55a7faa7dafb5';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:38:14 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:38:14 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:38:14 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:38:14 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:38:14 GMT
ENV RC_VERSION=8.3.8
# Sat, 19 Sep 2026 01:39:17 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:39:17 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:39:18 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:39:18 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:39:18 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:39:18 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff730c5ab9f7e576f32524ecb6d3795a7a11902cdd27bbff3a8a1e57d3f5412`  
		Last Modified: Sat, 19 Sep 2026 01:40:02 GMT  
		Size: 48.7 MB (48724347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69029d0b65269e7f75c2539fd216997a0cc54b8654f023bcf30b578d51df1074`  
		Last Modified: Sat, 19 Sep 2026 01:40:00 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e2f4ef14ac657ac616c9bb62813915ff52feb4a7575e6b3ae3fa9c50e0329c`  
		Last Modified: Sat, 19 Sep 2026 01:40:09 GMT  
		Size: 402.8 MB (402834850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.3` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:aef46523880b7b92ef5008a15962dcae3ef04e0c4c7d7480aab43a4e386f8b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fe07b32d99cc288b0120bb6f2256199ef3206be6a286724fa1314f3030b71b`

```dockerfile
```

-	Layers:
	-	`sha256:c0e7f936a05e0459901100a8b2535238e515b1546a46c2133a397a1e36f7f049`  
		Last Modified: Sat, 19 Sep 2026 01:40:00 GMT  
		Size: 23.5 KB (23467 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.3.8`

```console
$ docker pull rocket.chat@sha256:7aa880b9c544baed376a4a7639268c0fd3c3dad906ba07889cec18e4d8b7f315
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.3.8` - linux; amd64

```console
$ docker pull rocket.chat@sha256:6eca3fe1b99f30691ddcb42637bfb8b7780fdb73c9ffc21aa5eb7824cd5a85d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.5 MB (531453879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6751e2f455de2eca1abb2dbb52a7e60c971b833dd314914e70dc6f2e5c089c99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:38:14 GMT
ENV DENO_VERSION=1.43.5
# Sat, 19 Sep 2026 01:38:14 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='246bf818932c5e11adb85afaaf3c90e65d5cbe14bcaa8ea14d35fc085869775d';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3335cd10a3c17afa5a44fc79484cd3471ca151afa5d9ba6080e55a7faa7dafb5';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:38:14 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:38:14 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:38:14 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:38:14 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:38:14 GMT
ENV RC_VERSION=8.3.8
# Sat, 19 Sep 2026 01:39:17 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:39:17 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:39:18 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:39:18 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:39:18 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:39:18 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff730c5ab9f7e576f32524ecb6d3795a7a11902cdd27bbff3a8a1e57d3f5412`  
		Last Modified: Sat, 19 Sep 2026 01:40:02 GMT  
		Size: 48.7 MB (48724347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69029d0b65269e7f75c2539fd216997a0cc54b8654f023bcf30b578d51df1074`  
		Last Modified: Sat, 19 Sep 2026 01:40:00 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e2f4ef14ac657ac616c9bb62813915ff52feb4a7575e6b3ae3fa9c50e0329c`  
		Last Modified: Sat, 19 Sep 2026 01:40:09 GMT  
		Size: 402.8 MB (402834850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.3.8` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:aef46523880b7b92ef5008a15962dcae3ef04e0c4c7d7480aab43a4e386f8b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fe07b32d99cc288b0120bb6f2256199ef3206be6a286724fa1314f3030b71b`

```dockerfile
```

-	Layers:
	-	`sha256:c0e7f936a05e0459901100a8b2535238e515b1546a46c2133a397a1e36f7f049`  
		Last Modified: Sat, 19 Sep 2026 01:40:00 GMT  
		Size: 23.5 KB (23467 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.4`

```console
$ docker pull rocket.chat@sha256:e1e4f25f8eed7d3c6114243a1dfe1c4ab7ad4b4775016b55322e7a356e4072fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.4` - linux; amd64

```console
$ docker pull rocket.chat@sha256:62a81b62d6be1a6ae07311dcae4caa36c082dd3e1d5b19ffd1d96de131bd6b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.7 MB (408659683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f7ff380ab824e9bfba4c258c2efa1297df25a78e8599fbdcb16be340d48ce3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:37:54 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:37:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:37:54 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:37:54 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:37:54 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:37:54 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:37:54 GMT
ENV RC_VERSION=8.4.6
# Sat, 19 Sep 2026 01:38:45 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:38:46 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:38:46 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:38:46 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:38:46 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19aaaea44471cd8e2936019a3842bc01aad3be5c4a5d3979ea72f5b048501f5c`  
		Last Modified: Sat, 19 Sep 2026 01:39:23 GMT  
		Size: 43.8 MB (43774625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827a745b4ea846fc039d913c6c9af6c5af6fe871b4fffd315ad6911deeee4e10`  
		Last Modified: Sat, 19 Sep 2026 01:39:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f53eb45c83dfda8dcb84df5ed11a72d56aeb6195dac61296f1e28aed5c315cf`  
		Last Modified: Sat, 19 Sep 2026 01:39:27 GMT  
		Size: 285.0 MB (284990376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.4` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:2f1a979edb1abb7df1019e37eabb63674b6b842018d66b4aa240bcb40bff163f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23047a3de74b7cd0e9b056092a9c0ac49bb23cf57e0a3e890f8ac7692408d732`

```dockerfile
```

-	Layers:
	-	`sha256:7f488e982f06ac42cd4ed2be25fffdb61e53db9e16a5567c7b2ac1acfa96b505`  
		Last Modified: Sat, 19 Sep 2026 01:39:21 GMT  
		Size: 23.5 KB (23460 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.4.6`

```console
$ docker pull rocket.chat@sha256:e1e4f25f8eed7d3c6114243a1dfe1c4ab7ad4b4775016b55322e7a356e4072fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.4.6` - linux; amd64

```console
$ docker pull rocket.chat@sha256:62a81b62d6be1a6ae07311dcae4caa36c082dd3e1d5b19ffd1d96de131bd6b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.7 MB (408659683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f7ff380ab824e9bfba4c258c2efa1297df25a78e8599fbdcb16be340d48ce3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:37:54 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:37:54 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:37:54 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:37:54 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:37:54 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:37:54 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:37:54 GMT
ENV RC_VERSION=8.4.6
# Sat, 19 Sep 2026 01:38:45 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:38:45 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:38:46 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:38:46 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:38:46 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:38:46 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19aaaea44471cd8e2936019a3842bc01aad3be5c4a5d3979ea72f5b048501f5c`  
		Last Modified: Sat, 19 Sep 2026 01:39:23 GMT  
		Size: 43.8 MB (43774625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827a745b4ea846fc039d913c6c9af6c5af6fe871b4fffd315ad6911deeee4e10`  
		Last Modified: Sat, 19 Sep 2026 01:39:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f53eb45c83dfda8dcb84df5ed11a72d56aeb6195dac61296f1e28aed5c315cf`  
		Last Modified: Sat, 19 Sep 2026 01:39:27 GMT  
		Size: 285.0 MB (284990376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.4.6` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:2f1a979edb1abb7df1019e37eabb63674b6b842018d66b4aa240bcb40bff163f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23047a3de74b7cd0e9b056092a9c0ac49bb23cf57e0a3e890f8ac7692408d732`

```dockerfile
```

-	Layers:
	-	`sha256:7f488e982f06ac42cd4ed2be25fffdb61e53db9e16a5567c7b2ac1acfa96b505`  
		Last Modified: Sat, 19 Sep 2026 01:39:21 GMT  
		Size: 23.5 KB (23460 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.5`

```console
$ docker pull rocket.chat@sha256:6eea2a062e62915f89919b070934d6473b362ae1da72b151ba447b15669d548e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.5` - linux; amd64

```console
$ docker pull rocket.chat@sha256:b5724ef774a48cc840fc239571335a4eb38112333d6c45d23ad8161d9b2832e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.5 MB (412453223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c0c91e99104f8136770c537abb9bb2ff356c59cb51ac9874a62dfd6694d3512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:37:43 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:37:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:37:43 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:37:43 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:37:43 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:37:43 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:37:43 GMT
ENV RC_VERSION=8.5.3
# Sat, 19 Sep 2026 01:38:41 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:38:41 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:38:42 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:38:42 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:38:42 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:38:42 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60697495bc0ceccc0093adfc56f00e4cfe9df2830f3d4bdf2973c30898ea30f`  
		Last Modified: Sat, 19 Sep 2026 01:39:21 GMT  
		Size: 43.8 MB (43774614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2629ce2352e03d3b4b6f8f52a859250a554586bfbbbf1bced39b1161d0126c`  
		Last Modified: Sat, 19 Sep 2026 01:39:19 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a58a664332a771fd14d64db6c86b71759c4b6a18a8705f425450ca0e33ac5a7`  
		Last Modified: Sat, 19 Sep 2026 01:39:26 GMT  
		Size: 288.8 MB (288783926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.5` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:61cc1e731fd185847c479cb545a7b90493ffe4337b122c9c2899b1c9e0aa8521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec628f3460cade878b97b02a383a8bc504d4e1f2fdc187c9b2030223ff5d2f7`

```dockerfile
```

-	Layers:
	-	`sha256:73d0fefdd01c48fed816029c5a40bbf96c59aea86bac75f71f2108a572710da4`  
		Last Modified: Sat, 19 Sep 2026 01:39:19 GMT  
		Size: 23.5 KB (23458 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.5.3`

```console
$ docker pull rocket.chat@sha256:6eea2a062e62915f89919b070934d6473b362ae1da72b151ba447b15669d548e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.5.3` - linux; amd64

```console
$ docker pull rocket.chat@sha256:b5724ef774a48cc840fc239571335a4eb38112333d6c45d23ad8161d9b2832e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.5 MB (412453223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c0c91e99104f8136770c537abb9bb2ff356c59cb51ac9874a62dfd6694d3512`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:37:43 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:37:43 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:37:43 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:37:43 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:37:43 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:37:43 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:37:43 GMT
ENV RC_VERSION=8.5.3
# Sat, 19 Sep 2026 01:38:41 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:38:41 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:38:42 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:38:42 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:38:42 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:38:42 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60697495bc0ceccc0093adfc56f00e4cfe9df2830f3d4bdf2973c30898ea30f`  
		Last Modified: Sat, 19 Sep 2026 01:39:21 GMT  
		Size: 43.8 MB (43774614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2629ce2352e03d3b4b6f8f52a859250a554586bfbbbf1bced39b1161d0126c`  
		Last Modified: Sat, 19 Sep 2026 01:39:19 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a58a664332a771fd14d64db6c86b71759c4b6a18a8705f425450ca0e33ac5a7`  
		Last Modified: Sat, 19 Sep 2026 01:39:26 GMT  
		Size: 288.8 MB (288783926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.5.3` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:61cc1e731fd185847c479cb545a7b90493ffe4337b122c9c2899b1c9e0aa8521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec628f3460cade878b97b02a383a8bc504d4e1f2fdc187c9b2030223ff5d2f7`

```dockerfile
```

-	Layers:
	-	`sha256:73d0fefdd01c48fed816029c5a40bbf96c59aea86bac75f71f2108a572710da4`  
		Last Modified: Sat, 19 Sep 2026 01:39:19 GMT  
		Size: 23.5 KB (23458 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.6`

```console
$ docker pull rocket.chat@sha256:8d304914f2f7abcd0d36275309aad83b5e5e7cd4d45a0b5e7a19726e74d4e87b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.6` - linux; amd64

```console
$ docker pull rocket.chat@sha256:4401df7d0a6bd2598a98169a648d8340cdab4b073ee27d0e91acc443e77e31a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.9 MB (412895624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59edf6be6adb0fd5392dba174bbc091ad9142785f68acb9198f548a296585b15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:37:40 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:37:40 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:37:40 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:37:40 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:37:40 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:37:40 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:37:40 GMT
ENV RC_VERSION=8.6.2
# Sat, 19 Sep 2026 01:38:39 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:38:39 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:38:40 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:38:40 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:38:40 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:38:40 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486d5da80653e616ab72edc53b1d089a5310e7755465a3248e3a80e06e2ae24`  
		Last Modified: Sat, 19 Sep 2026 01:39:18 GMT  
		Size: 43.8 MB (43774586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfc15ab6934e7ae2689fd2b5db0bd85ee427a9eca1f7082238aea05b627d249`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597d3eba6d580161ce7c249145ad43ffa8dcb7fbb7d40e8dd8d74a2cadeb55e8`  
		Last Modified: Sat, 19 Sep 2026 01:39:22 GMT  
		Size: 289.2 MB (289226356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.6` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:422a9db07cb0e4681603c0749f678af7e8e9a9284a2d8bbbb57efc6ce0b97040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8cdad614b1b367f12eea28aafb9a1fd52be56b103fca00f8202753e682dc7b`

```dockerfile
```

-	Layers:
	-	`sha256:faeda7249e9cef79338fa5fca94a98cb39eebd6dd6c25bec287e97ffd5e4ab1c`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 23.5 KB (23460 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.6.2`

```console
$ docker pull rocket.chat@sha256:8d304914f2f7abcd0d36275309aad83b5e5e7cd4d45a0b5e7a19726e74d4e87b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.6.2` - linux; amd64

```console
$ docker pull rocket.chat@sha256:4401df7d0a6bd2598a98169a648d8340cdab4b073ee27d0e91acc443e77e31a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.9 MB (412895624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59edf6be6adb0fd5392dba174bbc091ad9142785f68acb9198f548a296585b15`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:37:40 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:37:40 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:37:40 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:37:40 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:37:40 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:37:40 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:37:40 GMT
ENV RC_VERSION=8.6.2
# Sat, 19 Sep 2026 01:38:39 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:38:39 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:38:40 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:38:40 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:38:40 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:38:40 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5486d5da80653e616ab72edc53b1d089a5310e7755465a3248e3a80e06e2ae24`  
		Last Modified: Sat, 19 Sep 2026 01:39:18 GMT  
		Size: 43.8 MB (43774586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfc15ab6934e7ae2689fd2b5db0bd85ee427a9eca1f7082238aea05b627d249`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597d3eba6d580161ce7c249145ad43ffa8dcb7fbb7d40e8dd8d74a2cadeb55e8`  
		Last Modified: Sat, 19 Sep 2026 01:39:22 GMT  
		Size: 289.2 MB (289226356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.6.2` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:422a9db07cb0e4681603c0749f678af7e8e9a9284a2d8bbbb57efc6ce0b97040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8cdad614b1b367f12eea28aafb9a1fd52be56b103fca00f8202753e682dc7b`

```dockerfile
```

-	Layers:
	-	`sha256:faeda7249e9cef79338fa5fca94a98cb39eebd6dd6c25bec287e97ffd5e4ab1c`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 23.5 KB (23460 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.7`

```console
$ docker pull rocket.chat@sha256:daac1b57926bdb00238b6c83c93d50b350622dde69ca5ef61006d50e03c0d445
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.7` - linux; amd64

```console
$ docker pull rocket.chat@sha256:d368dd16d279e57ca051d3ba949a40e24b1f05c63825a4c43fed879158dc8b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.4 MB (417365777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df57d5e4d7e21d681877ba0ea456b6eb64c3348942630599ff2cc913050c35ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:36:15 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:36:15 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:36:15 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:36:15 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:36:15 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:36:15 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:36:15 GMT
ENV RC_VERSION=8.7.1
# Sat, 19 Sep 2026 01:37:18 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:37:18 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:37:19 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:37:19 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:37:19 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:37:19 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc45efcf6359d2055fbfc03f3560fa5dd5815b507574134a844eae9bcdd2e709`  
		Last Modified: Sat, 19 Sep 2026 01:38:20 GMT  
		Size: 43.8 MB (43774628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53da494df53e0a9bf04a395a702f36f90d8b9af573ddcd8e7a62134bb5ebda51`  
		Last Modified: Sat, 19 Sep 2026 01:38:18 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7d72ca7ac00d10dc16280474e3f024a8640c7f08f5c78dd6387180da5943d4`  
		Last Modified: Sat, 19 Sep 2026 01:38:24 GMT  
		Size: 293.7 MB (293696467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.7` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:cb0df725ebf8189a211d0bf3c884747798d070495f39c2fa2fa71c5fbf458362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f78d69a9a2a73cce4f02228e7efe5ab41f6f8cefa5243229873b7f76e4bd94`

```dockerfile
```

-	Layers:
	-	`sha256:786e2e8f1a7aefabba2770c4bab462777743f6d2aaa7d6db4197771e754d7848`  
		Last Modified: Sat, 19 Sep 2026 01:38:18 GMT  
		Size: 23.5 KB (23459 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.7.1`

```console
$ docker pull rocket.chat@sha256:daac1b57926bdb00238b6c83c93d50b350622dde69ca5ef61006d50e03c0d445
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.7.1` - linux; amd64

```console
$ docker pull rocket.chat@sha256:d368dd16d279e57ca051d3ba949a40e24b1f05c63825a4c43fed879158dc8b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.4 MB (417365777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df57d5e4d7e21d681877ba0ea456b6eb64c3348942630599ff2cc913050c35ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:36:15 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:36:15 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:36:15 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:36:15 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:36:15 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:36:15 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:36:15 GMT
ENV RC_VERSION=8.7.1
# Sat, 19 Sep 2026 01:37:18 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:37:18 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:37:19 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:37:19 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:37:19 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:37:19 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc45efcf6359d2055fbfc03f3560fa5dd5815b507574134a844eae9bcdd2e709`  
		Last Modified: Sat, 19 Sep 2026 01:38:20 GMT  
		Size: 43.8 MB (43774628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53da494df53e0a9bf04a395a702f36f90d8b9af573ddcd8e7a62134bb5ebda51`  
		Last Modified: Sat, 19 Sep 2026 01:38:18 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7d72ca7ac00d10dc16280474e3f024a8640c7f08f5c78dd6387180da5943d4`  
		Last Modified: Sat, 19 Sep 2026 01:38:24 GMT  
		Size: 293.7 MB (293696467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.7.1` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:cb0df725ebf8189a211d0bf3c884747798d070495f39c2fa2fa71c5fbf458362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 KB (23459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f78d69a9a2a73cce4f02228e7efe5ab41f6f8cefa5243229873b7f76e4bd94`

```dockerfile
```

-	Layers:
	-	`sha256:786e2e8f1a7aefabba2770c4bab462777743f6d2aaa7d6db4197771e754d7848`  
		Last Modified: Sat, 19 Sep 2026 01:38:18 GMT  
		Size: 23.5 KB (23459 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.8`

```console
$ docker pull rocket.chat@sha256:c75e3a561932173f58ab78665c7833cb288c6f8478af642582f97a686de60277
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.8` - linux; amd64

```console
$ docker pull rocket.chat@sha256:e69e3387bf129fd5e4f4055eaaa14f96e8035d6834b8e3221b6727afd1ac4ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398082161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18edfb6f0c02419d83ab0e58bd4476ec3efc196d6686e9df3a8e1af7998ee294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:36:07 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:36:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:36:07 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:36:07 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:36:07 GMT
ENV RC_VERSION=8.8.1
# Sat, 19 Sep 2026 01:37:07 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:37:07 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:37:07 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:37:07 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:37:07 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:37:07 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482db4304f0c07d2b7765e4f381939c961bc91e7852b3c2dda4259228101285`  
		Last Modified: Sat, 19 Sep 2026 01:37:45 GMT  
		Size: 43.8 MB (43774614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05c6df697e684f5872a841a04eddde1e749e3814d92df6731b7f15e60d2cbf`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dd941397677df5953af841214ba3b2119c9a577f1db797524c5461e405b0c`  
		Last Modified: Sat, 19 Sep 2026 01:37:49 GMT  
		Size: 274.4 MB (274412864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.8` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:ff44314031d45fc0538f868abb6664664b840c17dd5dfe1675ec7bd27813fb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 KB (23768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa46b3ec8214e7c9a8ec456a2047d8735ae63c0a81923b4e3424e46c66a1e254`

```dockerfile
```

-	Layers:
	-	`sha256:48b80c32499a79760c1cc15f81869f769e5ab2e64ce6ce5c909694e0a68b8559`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 23.8 KB (23768 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:8.8.1`

```console
$ docker pull rocket.chat@sha256:c75e3a561932173f58ab78665c7833cb288c6f8478af642582f97a686de60277
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:8.8.1` - linux; amd64

```console
$ docker pull rocket.chat@sha256:e69e3387bf129fd5e4f4055eaaa14f96e8035d6834b8e3221b6727afd1ac4ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398082161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18edfb6f0c02419d83ab0e58bd4476ec3efc196d6686e9df3a8e1af7998ee294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:36:07 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:36:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:36:07 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:36:07 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:36:07 GMT
ENV RC_VERSION=8.8.1
# Sat, 19 Sep 2026 01:37:07 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:37:07 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:37:07 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:37:07 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:37:07 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:37:07 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482db4304f0c07d2b7765e4f381939c961bc91e7852b3c2dda4259228101285`  
		Last Modified: Sat, 19 Sep 2026 01:37:45 GMT  
		Size: 43.8 MB (43774614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05c6df697e684f5872a841a04eddde1e749e3814d92df6731b7f15e60d2cbf`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dd941397677df5953af841214ba3b2119c9a577f1db797524c5461e405b0c`  
		Last Modified: Sat, 19 Sep 2026 01:37:49 GMT  
		Size: 274.4 MB (274412864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:8.8.1` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:ff44314031d45fc0538f868abb6664664b840c17dd5dfe1675ec7bd27813fb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 KB (23768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa46b3ec8214e7c9a8ec456a2047d8735ae63c0a81923b4e3424e46c66a1e254`

```dockerfile
```

-	Layers:
	-	`sha256:48b80c32499a79760c1cc15f81869f769e5ab2e64ce6ce5c909694e0a68b8559`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 23.8 KB (23768 bytes)  
		MIME: application/vnd.in-toto+json

## `rocket.chat:latest`

```console
$ docker pull rocket.chat@sha256:c75e3a561932173f58ab78665c7833cb288c6f8478af642582f97a686de60277
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `rocket.chat:latest` - linux; amd64

```console
$ docker pull rocket.chat@sha256:e69e3387bf129fd5e4f4055eaaa14f96e8035d6834b8e3221b6727afd1ac4ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398082161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18edfb6f0c02419d83ab0e58bd4476ec3efc196d6686e9df3a8e1af7998ee294`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["node","main.js"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:48:24 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV NODE_VERSION=22.23.2
# Sat, 19 Sep 2026 00:48:44 GMT
RUN ARCH= OPENSSL_ARCH= && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch##*-}" in       amd64) ARCH='x64' OPENSSL_ARCH='linux-x86_64';;       ppc64el) ARCH='ppc64le' OPENSSL_ARCH='linux-ppc64le';;       s390x) ARCH='s390x' OPENSSL_ARCH='linux*-s390x';;       arm64) ARCH='arm64' OPENSSL_ARCH='linux-aarch64';;       armhf) ARCH='armv7l' OPENSSL_ARCH='linux-armv4';;       *) echo "unsupported architecture"; exit 1 ;;     esac     && set -ex     && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr xz-utils libatomic1 --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && export GNUPGHOME="$(mktemp -d)"     && for key in       5BE8A3F6C8A5C01D106C0AD820B1A390B168D356       DD792F5973C6DE52C432CBDAC77ABFA00DDBF2B7       CC68F5A3106FF448322E48ED27F5E38D5B0A215F       8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600       890C08DB8579162FEE0DF9DB8BEAB4DFCF555EF4       C82FA3AE1CBEDC6BE46B9360C43CEC45C17AB93C       108F52B48DB57BB0CC439B2997B01419BD92F80A       A363A499291CBBC940DD62E41F10027AF002F8B0       655F3B5C1FB3FA8D1A0CA6BDE4A7D232B936D2FD     ; do       { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||       { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;     done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && grep " node-v$NODE_VERSION-linux-$ARCH.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-$ARCH.tar.xz" -C /usr/local --strip-components=1 --no-same-owner     && rm "node-v$NODE_VERSION-linux-$ARCH.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "$OPENSSL_ARCH" -exec rm -rf {} \;     && apt-mark auto '.*' > /dev/null     && find /usr/local -type f -executable -exec ldd '{}' ';'       | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'       | sort -u       | xargs -r dpkg-query --search       | cut -d: -f1       | sort -u       | xargs -r apt-mark manual     && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false     && ln -s /usr/local/bin/node /usr/local/bin/nodejs     && node --version     && npm --version     && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:44 GMT
ENV YARN_VERSION=1.22.22
# Sat, 19 Sep 2026 00:48:56 GMT
RUN set -ex   && savedAptMark="$(apt-mark showmanual)"   && apt-get update && apt-get install -y ca-certificates curl wget gnupg dirmngr --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && export GNUPGHOME="$(mktemp -d)"   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     { gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ||     { gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key" && gpg --batch --fingerprint "$key"; } ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && gpgconf --kill all   && rm -rf "$GNUPGHOME"   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apt-mark auto '.*' > /dev/null   && { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; }   && find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && yarn --version   && rm -rf /tmp/* # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 19 Sep 2026 00:48:56 GMT
CMD ["node"]
# Sat, 19 Sep 2026 01:36:07 GMT
ENV DENO_VERSION=2.3.1
# Sat, 19 Sep 2026 01:36:07 GMT
RUN set -eux;   dpkgArch="$(dpkg --print-architecture)";   case "${dpkgArch##*-}" in     'amd64')       denoArch='x86_64';       denoSha256='b2920265e633215959b09a32b67f46c93362842bbfd27c96e8acc2d24b66f563';       ;;     'arm64')       denoArch='aarch64';       denoSha256='3771ede34037694591846166f6211e7a8ab5cd77a1e7143e637d4457e8708dc7';       ;;     *) echo >&2 "error: unsupported Deno architecture '$dpkgArch'"; exit 1 ;;   esac;   apt-get update;   apt-get install -y --no-install-recommends ca-certificates curl unzip;   rm -rf /var/lib/apt/lists/*;   cd /tmp;   curl -fsSL -o deno.zip "https://dl.deno.land/release/v${DENO_VERSION}/deno-${denoArch}-unknown-linux-gnu.zip";   echo "$denoSha256 *deno.zip" | sha256sum --strict --check -;   unzip deno.zip -d /tmp;   rm deno.zip;   chmod 755 /tmp/deno;   mv /tmp/deno /usr/local/bin/deno;   apt-mark auto '.*' > /dev/null;   find /usr/local -type f -executable -exec ldd '{}' ';'     | awk '/=>/ { print $(NF-1) }'     | sort -u     | xargs -r dpkg-query --search     | cut -d: -f1     | sort -u     | xargs -r apt-mark manual;   apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
RUN groupadd -r rocketchat   && useradd -r -g rocketchat rocketchat   && mkdir -p /app/uploads   && chown rocketchat:rocketchat /app/uploads # buildkit
# Sat, 19 Sep 2026 01:36:07 GMT
VOLUME [/app/uploads]
# Sat, 19 Sep 2026 01:36:07 GMT
WORKDIR /app
# Sat, 19 Sep 2026 01:36:07 GMT
ENV NODE_ENV=production
# Sat, 19 Sep 2026 01:36:07 GMT
ENV RC_VERSION=8.8.1
# Sat, 19 Sep 2026 01:37:07 GMT
RUN set -eux   && apt-get update   && apt-get install -y --no-install-recommends fontconfig   && aptMark="$(apt-mark showmanual)"   && apt-get install -y --no-install-recommends g++ make python3 ca-certificates curl gnupg   && rm -rf /var/lib/apt/lists/*   && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/download" -o rocket.chat.tgz   && curl -fSL "https://releases.rocket.chat/${RC_VERSION}/asc" -o rocket.chat.tgz.asc   && gpg --batch --verify rocket.chat.tgz.asc rocket.chat.tgz   && tar zxf rocket.chat.tgz   && rm rocket.chat.tgz rocket.chat.tgz.asc   && cd bundle/programs/server   && npm install --unsafe-perm=true   && apt-mark auto '.*' > /dev/null   && apt-mark manual $aptMark > /dev/null   && find /usr/local -type f -executable -exec ldd '{}' ';'   | awk '/=>/ { print $(NF-1) }'   | sort -u   | xargs -r dpkg-query --search   | cut -d: -f1   | sort -u   | xargs -r apt-mark manual   && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false   && npm cache clear --force   && chown -R rocketchat:rocketchat /app # buildkit
# Sat, 19 Sep 2026 01:37:07 GMT
USER rocketchat
# Sat, 19 Sep 2026 01:37:07 GMT
WORKDIR /app/bundle
# Sat, 19 Sep 2026 01:37:07 GMT
ENV DEPLOY_METHOD=docker-official MONGO_URL=mongodb://db:27017/meteor HOME=/tmp PORT=3000 ROOT_URL=http://localhost:3000
# Sat, 19 Sep 2026 01:37:07 GMT
EXPOSE map[3000/tcp:{}]
# Sat, 19 Sep 2026 01:37:07 GMT
CMD ["node" "main.js"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d456d1aa143e47912621240cd8e79286732dc069a35b0e02b03449f60df966df`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 3.3 KB (3311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f37e2c93ec479af36bf1f7a41277e572d820f3b1abbea47d8073b1f01aa502`  
		Last Modified: Sat, 19 Sep 2026 00:49:12 GMT  
		Size: 49.9 MB (49938232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53f92c42dd657487b7f7f027b206c996cd3760cda60adda79e44449b2753a29`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 1.7 MB (1713012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b571db164614a1290b74286b3e4f7ad934430b830515f81e922b39c75cf1dc7e`  
		Last Modified: Sat, 19 Sep 2026 00:49:10 GMT  
		Size: 447.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4482db4304f0c07d2b7765e4f381939c961bc91e7852b3c2dda4259228101285`  
		Last Modified: Sat, 19 Sep 2026 01:37:45 GMT  
		Size: 43.8 MB (43774614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba05c6df697e684f5872a841a04eddde1e749e3814d92df6731b7f15e60d2cbf`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d0dd941397677df5953af841214ba3b2119c9a577f1db797524c5461e405b0c`  
		Last Modified: Sat, 19 Sep 2026 01:37:49 GMT  
		Size: 274.4 MB (274412864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rocket.chat:latest` - unknown; unknown

```console
$ docker pull rocket.chat@sha256:ff44314031d45fc0538f868abb6664664b840c17dd5dfe1675ec7bd27813fb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 KB (23768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa46b3ec8214e7c9a8ec456a2047d8735ae63c0a81923b4e3424e46c66a1e254`

```dockerfile
```

-	Layers:
	-	`sha256:48b80c32499a79760c1cc15f81869f769e5ab2e64ce6ce5c909694e0a68b8559`  
		Last Modified: Sat, 19 Sep 2026 01:37:43 GMT  
		Size: 23.8 KB (23768 bytes)  
		MIME: application/vnd.in-toto+json
